# BÀI LÀM – HACKATHON 02

- **Mã đề:** 10
- **Họ tên:Pham Tuan Anh**
- **Lớp:CNTT2**
- **Link repository:**
- **Hệ điều hành (Windows/macOS): Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
cd ./chuyen-nha-website
mkdir data, docs, envidence,logs
mv hop_dong_thang_10.xlsx data
 mv request.log logs
  pwd
  mv checklist_chuyen_nha.txt docs
   cp data/hop_dong_thang_10.xlsx backup
   rm temp_010.tmp
   Get-ChildItem -Recurse -Force

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
PS C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website> Get-ChildItem -Recurse -Force


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   2:10 PM                backup
d-----        11/11/2026   2:07 PM                data
d-----        11/11/2026   2:11 PM                docs
d-----        11/11/2026   2:05 PM                envidence
d-----        11/11/2026   2:07 PM                logs
d-----        11/11/2026   2:03 PM                web
------         11/3/2026   7:08 AM             70 .env
-a----         11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6139 hop_dong_thang_10.xlsx


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            155 checklist_chuyen_nha.txt


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            973 request.log


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   2:03 PM                images
------         11/3/2026   7:08 AM            587 app.js
------         11/3/2026   7:08 AM            544 index.html
------         11/3/2026   7:08 AM            460 style.css


    Directory: C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
------         11/3/2026   7:08 AM           3054 logo-movefast.png


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
PS C:\Users\Admin\Desktop\starter-kit (2)\starter-kit\chuyen-nha-website> Select-String -Path logs/request.log -Pattern "status=500"

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
logs\request.log:3:2026-10-28 08:09:39 POST /api/dat-xe status=500
logs\request.log:4:2026-10-28 08:13:50 POST /api/thanh-toan status=500
```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
(Get-content logs/request.log | Select_string "status=404") .Count

```

```text
4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
./tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
# Script: tong_hop.ps1
# Tac gia: Pham Tuan Anh
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao..." > logs/tong_hop.txt
Get-content logs/request.log | Select-String "status=500" >> logs/tong_hop.txt
Get-content logs/request.log | Select-String "status=404" | Measure-Object >> logs/tong_hop.txt
Write_Host "Hoan thanh!"

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | Network | lỗi logo.jpg  | Chỉnh lại thành logo-movefast.jpg  |
| 2 | Cónule | lỗi hienThiGoiChuyen không đồng bộ  | Chỉnh lại cho đồng bộ với bên dưới |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** 

### Câu tìm kiếm Google

```text
(Ghi câu tìm kiếm vào đây – xoá dòng này)

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/hop_dong_thang_10.xlsx`, không cần ghi vào đây.
