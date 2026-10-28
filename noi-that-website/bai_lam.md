# BÀI LÀM – HACKATHON 01

- **Mã đề:** 18
- **Họ tên:** Đỗ Duy Thành
- **Lớp:** CNTT2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
C:\Users\Roq\Downloads\starter-kit (1)\noi-that-website
C:\Users\Roq\Downloads\starter-kit (1)\noi-that-website> ls
rm temp_267.tmp
mv kich_thuoc.txt docs
mv logo media
..\starter-kit (1)\noi-that-website\logs
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\Roq\Downloads\starter-kit (1)\noi-that-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        28/10/2026   1:36 PM                backup
d-----        28/10/2026   2:34 PM                data
d-----        28/10/2026   2:23 PM                docs
d-----        28/10/2026   2:33 PM                logs
d-----        28/10/2026   2:23 PM                media
d-----        28/10/2026   2:34 PM                Noi That Website FINAL
-a----        28/10/2026   2:16 PM            360 auto_report.ps1
-a----        28/10/2026   2:28 PM           2941 bai_lam.md
-a----        28/10/2026   2:24 PM             66 readme.md

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
# gc logs/furniture.log | sls "ERROR"| add-content logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ ] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell

# Script: auto_report.ps1

# Tac gia: Duy Thanh

# Ngay tao:28/10/2026

 

Write-Host "Dang loc log"


"=== Bao cao loi ===" | set-content logs/report.txt


 (gc logs/furniture.log | sls "ERROR" | Measure-Object).Count | add-content logs/report.txt
 gc logs/furniture.log | sls "ERROR"| add-content logs/report.txt

Write-Host "Da loc xong..."
```

### Kết quả hiển thị

```text
=== Bao cao loi ===
7
2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:55:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 07:59:33 [ERROR] Dat coc bi tu choi
2026-01-28 08:07:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:19:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:23:33 [ERROR] Ket noi kho hang that bai


```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(gc logs/furniture.log | sls "ERROR" | Measure-Object).Count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
7

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
#  (gc logs/furniture.log | sls "ERROR|WARNING" | Measure-Object).Count | add-content logs/tong_hop.txt
 gc logs/furniture.log | sls "ERROR"| add-content logs/tong_hop.txt
 gc logs/furniture.log | sls "WARNING"| add-content logs/tong_hop.txt


```

### Nội dung file logs/tong_hop.txt

```text
11
2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:55:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 07:59:33 [ERROR] Dat coc bi tu choi
2026-01-28 08:07:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:19:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:23:33 [ERROR] Ket noi kho hang that bai
2026-01-28 08:03:33 [WARNING] Thoi gian phan hoi cham
2026-01-28 08:11:33 [WARNING] Mau sofa don sap het
2026-01-28 08:15:33 [WARNING] Mau sofa don sap het
2026-01-28 08:35:33 [WARNING] Mau sofa don sap het

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_noi_that_quy_1.xlsx`, không cần ghi vào đây.
