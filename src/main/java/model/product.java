package model;

public class product {
    private int id;
    private String image_film;

    public product(){

    }
    public product(int id, String image_film){
        this.id=id;
        this.image_film=image_film;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage_film() {
        return image_film;
    }

    public void setImage_film(String image_film) {
        this.image_film = image_film;
    }

    @Override
    public String toString() {
        return "product{" +
                "id=" + id +
                ", image_film='" + image_film + '\'' +
                '}';
    }
}
