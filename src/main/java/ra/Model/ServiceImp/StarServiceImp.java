package ra.Model.ServiceImp;import ra.Model.Dao.StarDao;import ra.Model.DaoImp.starDaoImp;import ra.Model.Entity.Order;import ra.Model.Entity.Star;import ra.Model.Service.StarService;import java.util.List;public class StarServiceImp implements StarService<Star,String> {        private StarDao<Star,String> starDao = new starDaoImp();        @Override        public List<Star> getAll() {                return starDao.getAll();        }        @Override        public boolean create(Star star) {                return starDao.create(star);        }        @Override        public boolean update(Star star) {                return starDao.update(star);        }        @Override        public boolean delete(String id) {                return false;        }        @Override        public Star getById(String id) {                return null;        }        @Override        public boolean delete(Integer id) {                return false;        }        @Override        public List<Star> getAllConfirm() {                return starDao.getAllConfirm();        }        @Override        public List<Star> searchByconfirm(String name) {                return starDao.searchByconfirm(name);        }        @Override        public Order getById(Integer id) {                return null;        }        @Override        public List<Star> searchProByName(String name) {                return starDao.searchProductByName(name);        }        @Override        public List<Star> searchBetween(Float num1, Float num2) {                return null;        }        @Override        public List<Star> getAllBySort() {                return null;        }        @Override        public Integer getbyID(Integer id) {                return starDao.getbyID(id);        }}