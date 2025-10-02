# Weather Forecast App

這是一個使用 **Flutter + Riverpod** 開發的天氣查詢應用程式，根據使用者輸入的縣市名稱，顯示中央氣象局 36 小時天氣預報。

---

## 功能需求四種狀態：

- **Idle**：資料載入完成，但尚未搜尋，顯示提示訊息。
- **Loading**：搜尋時顯示讀取中 (CircularProgressIndicator)。
- **Result**：搜尋成功後顯示單一縣市的天氣資訊卡片。
- **Error**：搜尋不到縣市或 API 請求失敗時，顯示錯誤訊息。

---

## 技術架構

- **狀態管理**：Riverpod + Code Generation（`@riverpod` annotation）
- **UI**：
  - AppBar 中提供搜尋框
  - 輸入縣市名稱後篩選對應天氣資訊並顯示卡片

- **資料流示意圖**：
  - API → Model → ViewModel → WeatherStateResult Provider → UI

---

## Flutter版本
- **Flutter** 3.35.4 / **Dart** 3.9.2

## 第三方套件
- **Riverpod** (狀態管理)
- **Dio** (API 請求)
- **Freezed** (資料模型 / 狀態)