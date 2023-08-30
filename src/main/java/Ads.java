import java.util.List;

public interface Ads {
    List<Ad> all();
    Ads findCoffeeById(long id);
    void insert(Ads ad);
    void update(Ads ad);
    void delete(Ads ad);
}
