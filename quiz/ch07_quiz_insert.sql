INSERT INTO members (name, email, phone_number, membership_status) VALUES
('홍길동', 'hong@example.com', '010-1234-5678', 'active'),
('김민수', 'kimminsu@example.com', '010-1111-2222', 'inactive'),
('이영희', 'leeyh@example.com', '010-3333-4444', 'active'),
('박준형', 'parkjh@example.com', '010-5555-6666', 'suspended'),
('최수지', 'choisuji@example.com', '010-7777-8888', 'active'),
('윤하나', 'yunhana@example.com', '010-9999-0000', 'active');
INSERT INTO member_profiles (date_of_birth, address, member_id) VALUES
('1990-01-15', '서울시 강남구 역삼동', 1),
('1985-03-22', '부산시 해운대구 우동', 2),
('1992-07-09', '대구시 수성구 범어동', 3),
('1988-11-11', '인천시 연수구 송도동', 4),
('1995-05-05', '광주시 북구 운암동', 5),
('2000-12-25', '대전시 서구 둔산동', 6);
INSERT INTO books (title, author, category, stock) VALUES
('데이터베이스 입문', '정철', 'IT', 5),
('자바의 정석', '남궁성', '프로그래밍', 3),
('미움받을 용기', '기시미 이치로', '자기계발', 8),
('어린 왕자', '앙투안 드 생텍쥐페리', '문학', 10),
('토지', '박경리', '한국문학', 4),
('총균쇠', '재레드 다이아몬드', '역사', 2),
('삼국지', '나관중', '중국고전', 7);
INSERT INTO borrow_records (borrow_date, return_date, member_id, book_id) VALUES
('2025-06-01', '2025-06-10', 1, 1),
('2025-06-02', NULL, 2, 3),
('2025-06-03', '2025-06-12', 3, 2),
('2025-06-04', NULL, 4, 4),
('2025-06-05', '2025-06-13', 5, 5),
('2025-06-06', NULL, 6, 1),
('2025-06-07', NULL, 1, 6);
INSERT INTO library_staff (name, role, employment_date, salary) VALUES
('오지현', 'manager', '2020-01-10', 3500000),
('김선영', 'staff', '2021-06-15', 2800000),
('이상우', 'staff', '2022-03-01', 3000000),
('장미라', 'staff', '2023-08-20', 2900000),
('박세진', 'admin', '2019-11-05', 4000000);

INSERT INTO members (name, email, phone_number, membership_status) VALUES
('오지현', 'member_oh@example.com', '010-1010-2020', 'active'),
('김선영', 'member_kim@example.com', '010-3030-4040', 'active'),
('이상우', 'member_lee@example.com', '010-5050-6060', 'inactive');

INSERT INTO member_profiles (date_of_birth, address, member_id) VALUES
('1991-02-10', '서울시 종로구', 7),
('1989-08-20', '부산시 남구', 8),
('1993-04-15', '대전시 유성구', 9);
INSERT INTO library_staff (name, role, employment_date, salary) VALUES
('오지현', 'staff', '2024-02-01', 3100000),
('김선영', 'admin', '2023-09-10', 3800000),
('이상우', 'manager', '2022-12-05', 3600000);
INSERT INTO members (name, email, phone_number, membership_status) VALUES
('김지남', 'nam@example.com', '010-1234-5678', 'active'),
('김지북', 'book@example.com', '010-1111-2222', 'inactive');