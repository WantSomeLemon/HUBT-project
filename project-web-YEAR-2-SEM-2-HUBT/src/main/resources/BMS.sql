-- =============================================
-- BookMyShow - Vietnamese Sample Seed Data
-- Database: bms
-- Currency: VND
-- LƯU Ý: Chỉ chạy file khi các bảng trống dữ liệu
-- =============================================

CREATE DATABASE IF NOT EXISTS bms;
USE bms;

-- Không chạy dòng dưới nếu muốn giữ dữ liệu:
-- DROP DATABASE IF EXISTS bms;

-- =============================================
-- 1. CITIES
-- =============================================

INSERT INTO cities (name, state) VALUES
('Hà Nội', 'Hà Nội'),
('TP. Hồ Chí Minh', 'TP. Hồ Chí Minh'),
('Đà Nẵng', 'Đà Nẵng'),
('Hải Phòng', 'Hải Phòng'),
('Cần Thơ', 'Cần Thơ');

-- =============================================
-- 2. USERS
-- Mật khẩu mẫu chỉ dùng cho môi trường phát triển.
-- =============================================

INSERT INTO users (name, email, password, phone, created_at) VALUES
('Nguyễn Minh Anh', 'minhanh@example.com', 'pass123', '0901234567', NOW()),
('Trần Hoàng Nam', 'hoangnam@example.com', 'pass123', '0912345678', NOW()),
('Lê Thu Hà', 'thuha@example.com', 'pass123', '0923456789', NOW()),
('Phạm Quang Huy', 'quanghuy@example.com', 'pass123', '0934567890', NOW()),
('Đỗ Ngọc Linh', 'ngoclinh@example.com', 'pass123', '0945678901', NOW()),
('Vũ Đức Anh', 'ducanh@example.com', 'pass123', '0967890123', NOW());

-- =============================================
-- 3. MOVIES
-- =============================================

INSERT INTO movies
(title, description, genre, language, duration_minutes, rating, release_date, poster_url)
VALUES
(
    'Mai',
    'Câu chuyện về Mai, một người phụ nữ làm nghề massage với nhiều tổn thương trong quá khứ, và mối quan hệ của cô với Dương.',
    'Tâm lý',
    'Tiếng Việt',
    131,
    7.2,
    '2024-02-10',
    'https://vi.wikipedia.org/wiki/Mai_(phim)#/media/T%E1%BA%ADp_tin:Mai_2024_poster.jpg'
),
(
    'Nhà Bà Nữ',
    'Câu chuyện gia đình xoay quanh bà Nữ, người phụ nữ mạnh mẽ và những mâu thuẫn giữa các thế hệ.',
    'Gia đình',
    'Tiếng Việt',
    102,
    6.8,
    '2023-01-22',
    'https://vi.wikipedia.org/wiki/Nh%C3%A0_b%C3%A0_N%E1%BB%AF#/media/T%E1%BA%ADp_tin:%C3%81p_ph%C3%ADch_phim_Nh%C3%A0_b%C3%A0_N%E1%BB%AF.jpg'
),
(
    'Lật Mặt 7: Một Điều Ước',
    'Một người mẹ lớn tuổi và năm người con phải đối mặt với những lựa chọn khó khăn về gia đình và trách nhiệm.',
    'Tâm lý',
    'Tiếng Việt',
    138,
    7.0,
    '2024-04-26',
    'https://vi.wikipedia.org/wiki/L%E1%BA%ADt_m%E1%BA%B7t_7:_M%E1%BB%99t_%C4%91i%E1%BB%81u_%C6%B0%E1%BB%9Bc#/media/T%E1%BA%ADp_tin:%C3%81p_ph%C3%ADch_ch%C3%ADnh_th%E1%BB%A9c_L%E1%BA%ADt_m%E1%BA%B7t_7.jpg'
),
(
    'Jawan',
    'Một người đàn ông bí ẩn thực hiện những nhiệm vụ táo bạo nhằm phơi bày các vấn đề bất công trong xã hội.',
    'Hành động',
    'Hindi',
    169,
    7.0,
    '2023-09-07',
    'https://upload.wikimedia.org/wikipedia/en/3/39/Jawan_film_poster.jpg'
),
(
    'Avengers: Endgame',
    'Các siêu anh hùng còn sống tập hợp để tìm cách đảo ngược hậu quả của một thảm họa ảnh hưởng đến toàn vũ trụ.',
    'Hành động',
    'Tiếng Anh',
    181,
    8.4,
    '2019-04-26',
    'https://en.wikipedia.org/wiki/Avengers:_Endgame#/media/File:Avengers_Endgame_poster.jpg'
);

-- =============================================
-- 4. THEATERS
-- city_id:
-- 1 = Hà Nội
-- 2 = TP. Hồ Chí Minh
-- 3 = Đà Nẵng
-- 4 = Hải Phòng
-- 5 = Cần Thơ
-- =============================================

INSERT INTO theaters (name, address, city_id) VALUES
('CGV Vincom Bà Triệu', '191 Bà Triệu, Hai Bà Trưng, Hà Nội', 1),
('Lotte Cinema Hà Đông', 'Mộ Lao, Hà Đông, Hà Nội', 1),
('CGV Vincom Đồng Khởi', '72 Lê Thánh Tôn, Quận 1, TP. Hồ Chí Minh', 2),
('Galaxy Nguyễn Du', '116 Nguyễn Du, Quận 1, TP. Hồ Chí Minh', 2),
('Lotte Cinema Đà Nẵng', 'Hải Châu, Đà Nẵng', 3),
('CGV Hải Phòng', 'Lê Chân, Hải Phòng', 4),
('Lotte Cinema Cần Thơ', 'Ninh Kiều, Cần Thơ', 5);

-- =============================================
-- 5. SCREENS
-- theater_id tương ứng với ID rạp bên trên.
-- =============================================

INSERT INTO screens (name, total_seats, theater_id) VALUES
('Phòng chiếu 1', 10, 1),
('Phòng chiếu 2', 8, 1),
('Phòng chiếu 1', 10, 2),
('IMAX', 12, 3),
('Phòng chiếu VIP', 10, 4),
('Phòng chiếu 1', 8, 5),
('Phòng chiếu 1', 10, 6),
('Phòng chiếu 1', 8, 7);

-- =============================================
-- 6. SEATS
-- Screen 1: seat_id 1-10
-- Screen 2: seat_id 11-18
-- Screen 3: seat_id 19-28
-- Screen 4: seat_id 29-40
-- Screen 5: seat_id 41-50
-- Screen 6: seat_id 51-58
-- Screen 7: seat_id 59-68
-- Screen 8: seat_id 69-76
-- =============================================

-- Screen 1: 10 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 1),
('A2', 'A', 2, 'REGULAR', 1),
('A3', 'A', 3, 'REGULAR', 1),
('A4', 'A', 4, 'REGULAR', 1),
('A5', 'A', 5, 'REGULAR', 1),
('B1', 'B', 1, 'PREMIUM', 1),
('B2', 'B', 2, 'PREMIUM', 1),
('B3', 'B', 3, 'PREMIUM', 1),
('C1', 'C', 1, 'VIP', 1),
('C2', 'C', 2, 'VIP', 1);

-- Screen 2: 8 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 2),
('A2', 'A', 2, 'REGULAR', 2),
('A3', 'A', 3, 'REGULAR', 2),
('A4', 'A', 4, 'REGULAR', 2),
('B1', 'B', 1, 'PREMIUM', 2),
('B2', 'B', 2, 'PREMIUM', 2),
('B3', 'B', 3, 'PREMIUM', 2),
('C1', 'C', 1, 'VIP', 2);

-- Screen 3: 10 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 3),
('A2', 'A', 2, 'REGULAR', 3),
('A3', 'A', 3, 'REGULAR', 3),
('A4', 'A', 4, 'REGULAR', 3),
('A5', 'A', 5, 'REGULAR', 3),
('B1', 'B', 1, 'PREMIUM', 3),
('B2', 'B', 2, 'PREMIUM', 3),
('B3', 'B', 3, 'PREMIUM', 3),
('C1', 'C', 1, 'VIP', 3),
('C2', 'C', 2, 'VIP', 3);

-- Screen 4: 12 ghế IMAX
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 4),
('A2', 'A', 2, 'REGULAR', 4),
('A3', 'A', 3, 'REGULAR', 4),
('A4', 'A', 4, 'REGULAR', 4),
('B1', 'B', 1, 'PREMIUM', 4),
('B2', 'B', 2, 'PREMIUM', 4),
('B3', 'B', 3, 'PREMIUM', 4),
('B4', 'B', 4, 'PREMIUM', 4),
('C1', 'C', 1, 'VIP', 4),
('C2', 'C', 2, 'VIP', 4),
('C3', 'C', 3, 'VIP', 4),
('C4', 'C', 4, 'VIP', 4);

-- Screen 5: 10 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 5),
('A2', 'A', 2, 'REGULAR', 5),
('A3', 'A', 3, 'REGULAR', 5),
('A4', 'A', 4, 'REGULAR', 5),
('A5', 'A', 5, 'REGULAR', 5),
('B1', 'B', 1, 'PREMIUM', 5),
('B2', 'B', 2, 'PREMIUM', 5),
('B3', 'B', 3, 'PREMIUM', 5),
('C1', 'C', 1, 'VIP', 5),
('C2', 'C', 2, 'VIP', 5);

-- Screen 6: 8 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 6),
('A2', 'A', 2, 'REGULAR', 6),
('A3', 'A', 3, 'REGULAR', 6),
('A4', 'A', 4, 'REGULAR', 6),
('B1', 'B', 1, 'PREMIUM', 6),
('B2', 'B', 2, 'PREMIUM', 6),
('B3', 'B', 3, 'PREMIUM', 6),
('C1', 'C', 1, 'VIP', 6);

-- Screen 7: 10 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 7),
('A2', 'A', 2, 'REGULAR', 7),
('A3', 'A', 3, 'REGULAR', 7),
('A4', 'A', 4, 'REGULAR', 7),
('A5', 'A', 5, 'REGULAR', 7),
('B1', 'B', 1, 'PREMIUM', 7),
('B2', 'B', 2, 'PREMIUM', 7),
('B3', 'B', 3, 'PREMIUM', 7),
('C1', 'C', 1, 'VIP', 7),
('C2', 'C', 2, 'VIP', 7);

-- Screen 8: 8 ghế
INSERT INTO seats
(seat_number, seat_row, seat_col, seat_type, screen_id)
VALUES
('A1', 'A', 1, 'REGULAR', 8),
('A2', 'A', 2, 'REGULAR', 8),
('A3', 'A', 3, 'REGULAR', 8),
('A4', 'A', 4, 'REGULAR', 8),
('B1', 'B', 1, 'PREMIUM', 8),
('B2', 'B', 2, 'PREMIUM', 8),
('B3', 'B', 3, 'PREMIUM', 8),
('C1', 'C', 1, 'VIP', 8);

-- =============================================
-- 7. SHOWS
-- movie_id:
-- 1 = Mai
-- 2 = Nhà Bà Nữ
-- 3 = Lật Mặt 7: Một Điều Ước
-- 4 = Jawan
-- 5 = Avengers: Endgame
-- Ngày chiếu: tháng 11/2026
-- =============================================

INSERT INTO shows
(movie_id, screen_id, show_date, start_time, end_time, ticket_price)
VALUES
(1, 1, '2026-11-01', '09:00:00', '11:11:00', 90000),
(1, 1, '2026-11-01', '13:00:00', '15:11:00', 100000),
(2, 2, '2026-11-01', '10:00:00', '11:42:00', 80000),
(3, 3, '2026-11-01', '14:00:00', '16:18:00', 100000),
(4, 4, '2026-11-01', '18:00:00', '20:49:00', 180000),
(5, 4, '2026-11-02', '09:00:00', '12:01:00', 200000),
(1, 5, '2026-11-02', '19:00:00', '21:11:00', 150000),
(2, 6, '2026-11-02', '15:00:00', '16:42:00', 85000),
(3, 7, '2026-11-03', '10:00:00', '12:18:00', 90000),
(4, 8, '2026-11-03', '19:00:00', '21:49:00', 100000),
(5, 1, '2026-11-04', '18:00:00', '21:01:00', 120000),
(1, 3, '2026-11-04', '20:00:00', '22:11:00', 110000);

-- =============================================
-- 8. BOOKINGS
-- BookingStatus chỉ gồm CONFIRMED và CANCELLED.
-- =============================================

INSERT INTO bookings
(user_id, show_id, total_price, status, booked_at)
VALUES
(1, 1, 180000, 'CONFIRMED', NOW()),
(2, 3, 80000, 'CONFIRMED', NOW()),
(3, 5, 360000, 'CONFIRMED', NOW()),
(4, 1, 90000, 'CANCELLED', NOW()),
(5, 4, 200000, 'CONFIRMED', NOW()),
(6, 6, 400000, 'CONFIRMED', NOW()),
(1, 7, 300000, 'CANCELLED', NOW()),
(2, 8, 170000, 'CONFIRMED', NOW());

-- =============================================
-- 9. BOOKING_SEATS
-- Chỉ liên kết booking với ghế thuộc đúng màn hình
-- của suất chiếu tương ứng.
-- =============================================

-- Booking 1: Mai, Screen 1, ghế A1 và A2
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(1, 1),
(1, 2);

-- Booking 2: Nhà Bà Nữ, Screen 2, ghế A1
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(2, 11);

-- Booking 3: Jawan, IMAX, ghế A1 và A2
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(3, 29),
(3, 30);

-- Booking 4: Đã hủy, Screen 1, ghế A3
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(4, 3);

-- Booking 5: Lật Mặt 7, Screen 3, ghế A1 và A2
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(5, 19),
(5, 20);

-- Booking 6: Avengers: Endgame, IMAX, ghế B1 và B2
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(6, 33),
(6, 34);

-- Booking 7: Mai, Screen 5, ghế A1 và A2
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(7, 41),
(7, 42);

-- Booking 8: Nhà Bà Nữ, Screen 6, ghế A1 và A2
INSERT INTO booking_seats (booking_id, seat_id) VALUES
(8, 51),
(8, 52);

-- =============================================
-- 10. CHECK DATA
-- =============================================

SELECT * FROM cities;
SELECT * FROM users;
SELECT * FROM movies;
SELECT * FROM theaters;
SELECT * FROM screens;
SELECT * FROM seats;
SELECT * FROM shows;
SELECT * FROM bookings;
SELECT * FROM booking_seats;

-- =============================================
-- 11. TEST JOIN
-- Xem suất chiếu, phim, rạp và thành phố.
-- =============================================

SELECT
    sh.id AS show_id,
    m.title AS movie_title,
    t.name AS theater_name,
    c.name AS city_name,
    sc.name AS screen_name,
    sh.show_date,
    sh.start_time,
    sh.end_time,
    sh.ticket_price
FROM shows sh
JOIN movies m ON sh.movie_id = m.id
JOIN screens sc ON sh.screen_id = sc.id
JOIN theaters t ON sc.theater_id = t.id
JOIN cities c ON t.city_id = c.id
ORDER BY sh.show_date, sh.start_time;

-- =============================================
-- 12. TEST BOOKING
-- Xem thông tin đặt vé và các ghế đã chọn.
-- =============================================

SELECT
    b.id AS booking_id,
    u.name AS customer_name,
    m.title AS movie_title,
    sh.show_date,
    sh.start_time,
    b.total_price,
    b.status,
    GROUP_CONCAT(
        se.seat_number
        ORDER BY se.seat_row, se.seat_col
    ) AS seats
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN shows sh ON b.show_id = sh.id
JOIN movies m ON sh.movie_id = m.id
LEFT JOIN booking_seats bs ON b.id = bs.booking_id
LEFT JOIN seats se ON bs.seat_id = se.id
GROUP BY
    b.id,
    u.name,
    m.title,
    sh.show_date,
    sh.start_time,
    b.total_price,
    b.status
ORDER BY b.id;
