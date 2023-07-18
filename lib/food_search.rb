require 'net/http'
require 'json'

# APIキー、取得するデータの数、都道府県コード、検索キーワード、レスポンスフォーマットを設定
KEYID = ENV['API_KEY']
COUNT = 10
PREF = "Z023"
FREEWORD = "梅田駅"
FORMAT = "json"
# 上記のパラメータをハッシュ形式でまとめる
PARAMS = {"key": KEYID, "count":COUNT, "large_area":PREF, "keyword":FREEWORD, "format":FORMAT}


def request_api(uri)
  json_res = Net::HTTP.get uri
  response = JSON.load(json_res)

  # APIリクエストが失敗した場合、またはエラーメッセージがある場合はnilを返す
  if response.nil? || response["results"].has_key?("error")
    puts "APIリクエストが失敗しました"
    return nil
  end

  # レスポンスからレストラン情報を取り出して返す
  response["results"]["shop"]
end

def print_restaurants(restaurants)
  puts "名称, 営業日, 住所, 予算（平均）, ジャンル"
  restaurants.each do |restaurant|
    puts "#{restaurant["name"]}, #{restaurant["open"]}, #{restaurant["address"]}, #{restaurant["budget"]["average"]}, #{restaurant["genre"]["name"]}"
  end
end


def fetch_and_print_data(params)
  uri = URI.parse("https://webservice.recruit.co.jp/hotpepper/gourmet/v1/")
  uri.query = URI.encode_www_form(params)

  restaurants = request_api(uri)

  if restaurants.nil?
    puts "表示するデータがありません。"
  else
    print_restaurants(restaurants)
    puts "データ取得に成功しました。"
  end
end

fetch_and_print_data(PARAMS)
