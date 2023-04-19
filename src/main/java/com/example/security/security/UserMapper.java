package com.example.security.security;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    // 로그인
    @Select(
            "SELECT *\n" +
            "FROM   tb_user\n" +
            "WHERE  user_id = #{userId} "
    )
    UserVo getUserAccount(String userId);

    // 회원가입
    @Insert(
            "INSERT INTO tb_user\n" +
            "            (user_id,\n" +
            "             user_pw,\n" +
            "             user_name,\n" +
            "             user_auth,\n" +
            "             append_date,\n" +
            "             update_date)\n" +
            "VALUES     ( #{userId},\n" +
            "             #{userPw},\n" +
            "             #{userName},\n" +
            "             #{userAuth},\n" +
            "             #{appendDate},\n" +
            "             #{updateDate}); "
    )
    void saveUser(UserVo userVo);
}