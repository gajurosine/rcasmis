package rw.ac.rca.webapp.dao.impl;

import org.hibernate.Query;
import rw.ac.rca.webapp.dao.SearchDAO;
import rw.ac.rca.webapp.orm.Search;

public class SearchDAOImpl extends DAO implements SearchDAO {

    private static SearchDAOImpl instance;

    private SearchDAOImpl() {

    }

    public static SearchDAOImpl getInstance() {
        if (instance == null) {
            return new SearchDAOImpl();
        } else {
            return instance;
        }
    }

    public Search search(String search) {
        // search user and course
        String hql = "from User where fullName like :search or username like :search or email like :search";
        String hql2 = "from Course where name like :search or code like :search";
        try {
            begin();
            Query query = getSession().createQuery(hql);
            query.setParameter("search", "%" + search + "%");
            Query query2 = getSession().createQuery(hql2);
            query2.setParameter("search", "%" + search + "%");
            Search s = new Search();
            s.setUsers(query.list());
            s.setCourses(query2.list());
            commit();
            return s;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }
}
