
import com.gitweb.shop.dao.ICostDao;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by zhaorunsheng on 2016/12/1.
 */
public class Test {
    public static void main(String[] args) throws IOException {
        String s="mybatis.xml";
        InputStream inputStream= Resources.getResourceAsStream(s);
        SqlSessionFactory factory=new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlSession = factory.openSession();
        ICostDao mapper = sqlSession.getMapper(ICostDao.class);
        System.out.println(inputStream);
    }
}
