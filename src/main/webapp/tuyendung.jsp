<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/22/2023
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tuyển dụng</title>
    <link rel="stylesheet" href="./assets/css/tuyendung.css">
</head>
<body>
    <jsp:include page="header.jsp"/>
    <div id="available_job">
        <div class="toggle_job">
            <div class="toggle_job_title"><a style="text-decoration: none; color: black;"href="tuyendung.jsp"><h4>TUYỂN DỤNG</h4></a></div>
            <div class="toggle_job_title"><a style="text-decoration: none; color: black;"href="trusochinh.jsp"><h4>TRỤ SỞ CHÍNH</h4></a></div>
            <div class="toggle_job_title"><a style="text-decoration: none; color: black;"href=""><h4>CỤM RẠP</h4></a></div>
        </div>
        <div class="main">
            <div class="career-recruitment-content">
                <div style="display: flex;"><img style="width: 725px; height:438px;"src="https://www.cgv.vn/media/wysiwyg/jobs/cgv-2.png"></div>
                <p>&nbsp;</p>

                <h2 style="width: 100%; text-align: center; color: #e71a0f; font-size: 18px; margin-bottom: 5px;">ĐỒNG HÀNH CÙNG CJ CGV VIETNAM</h2>
                <div class="content-khoi-nghiep" style="width:100%; margin-top:15px">
                    <p><strong>CJ CGV</strong> trực thuộc <strong>CJ Group</strong> một trong những tập đoàn kinh tế đa ngành lớn nhất của Hàn Quốc đã có mặt ở 21 quốc gia trên thế giới. <strong>CJ CGV</strong> là một trong top 05 cụm rạp chiếu phim lớn nhất toàn cầu và là nhà phát hành, cụm rạp chiếu phim lớn nhất tại Việt Nam.</p>
                    <p>&nbsp;</p>
                    <p><strong>CJ CGV</strong> luôn mong muốn mang đến nhiều cơ hội làm việc cho các tài năng trẻ, năng động, yêu thích ngành công nghiệp điện ảnh.</p>
                    <p>&nbsp;</p>
                    <p>Để gia nhập gia đình CJ CGV Việt Nam và trở thành một CGVians chính hiệu, bạn có thể tham khảo một số cách dưới đây:</p>
                    <p>&nbsp;</p>
                    <p>1. Gửi CV kèm ảnh đến email <a style="text-decoration: none; color: #e71a0f;"href="mailto:cgvtalent@cj.net">cgvtalent@cj.net</a> ghi rõ tiêu đề "[TÊN] - Ứng tuyển [VỊ TRÍ] – [NƠI LÀM VIỆC]".</p>
                    <p>2. Đăng ký ứng tuyển trực tiếp qua link:</p>
                    <ul style="margin: 0;">
                        <li><a style="color: #e71a0f;"href="https://goo.gl/forms/mYXUlxiuNoiTn9Tz1">Hà Nội và các tỉnh miền Bắc</a>.</li>
                        <li><a style="color: #e71a0f;"href="https://goo.gl/forms/6mX92dR1RL6pukDF3">Các tỉnh miền Trung</a>.</li>
                        <li><a style="color: #e71a0f;"href="https://goo.gl/forms/LoXxB5D0bfMNJTnF2">Thành phố Hồ Chí Minh và các tỉnh miền Đông</a>.</li>
                        <li><a style="color: #e71a0f;"href="https://goo.gl/forms/ctgiCvszPrQDxJk12">Các tỉnh khu vực Mekong</a>.</li>
                    </ul>
                    <p>3. Nộp hồ sơ trực tiếp tại Quầy hướng dẫn của các cụm rạp CGV ứng viên mong muốn làm việc.</p>
                    <p>&nbsp;</p>
                    <p><strong>LƯU Ý:</strong></p>
                    <ul>
                        <li>CJ CGV tuyển dụng không tốn bất kỳ chi phí nào. <strong>TUYỆT ĐỐI</strong> không nộp phí với bất kỳ hình thức nào</li>
                        <li>CJ CGV sẽ liên lạc với ứng viên phù hợp qua điện thoại/email.</li>
                        <li>Hiện tại CJ CGV không tuyển nhân viên thông qua đơn vị khác, ứng viên lưu ý để tránh các trường hợp lừa đảo tuyển dụng.</li>
                        <li>Tất cả các thông tin tuyển dụng sẽ được đăng trên website <a style="color: #e71a0f;" href="https://www.cgv.vn">www.cgv.vn</a>, các trang tuyển dụng uy tín và các kênh mạng xã hội của CJ CGV.</li>
                    </ul>
                    <p>&nbsp;</p>
                    <ul style="display: flex; justify-content: center;">
                        <li style="padding-right:50px; list-style: none;"><img style="width: 355px; height: 237px;"src="https://www.cgv.vn/media/wysiwyg/jobs/cgv-1.png"></li>
                        <li style="list-style: none;"><img style="width: 355px; height: 237px; "src="https://www.cgv.vn/media/wysiwyg/jobs/cgv-3.png"></li>
                    </ul>

                    <p>&nbsp;</p>
                    <p>Theo dõi chúng tôi ở các kênh mạng xã hội chính thức để cập nhật các thông tin tuyển dụng mới nhất:</p>
                    <ul>
                        <li><a style="color: #e71a0f;"href="https://www.facebook.com/CJCGVVietnamCareers/">Facebook</a></li>
                        <li><a style="color: #e71a0f;"href="https://www.linkedin.com/company/cjcgvvietnam/">Linkedin</a></li>
                    </ul>
                    <p>&nbsp;</p>
                    <p>Tham khảo các vị trí đang tuyển dụng:</p>
                    <ul>
                        <li><a  style="color: #e71a0f;"href="https://www.cgv.vn/default/careers/?category=13">CÁC VỊ TRÍ KHỐI VĂN PHÒNG</a></li>
                        <li><a style="color: #e71a0f;"href="https://www.cgv.vn/default/careers/?category=16">CÁC VỊ TRÍ TẠI CỤM RẠP</a></li>
                    </ul>
                </div>
            </div>



        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
