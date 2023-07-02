package beans;

public class RezeptVorschau {


    private String rezeptID;
    private String searchID;
    private String sortData;

    public RezeptVorschau() {

    this.rezeptID=".";
    this.searchID=".";

    this.sortData="oldFirst";


}

    public String getRezeptID() {
        return rezeptID;
    }

    public void setRezeptID(String rezeptID) {
        this.rezeptID = rezeptID;
    }

    public String getSearchID() {
        return searchID;
    }

    public void setSearchID(String searchID) {
        this.searchID = searchID;
    }

    public String getSortData() {
        return sortData;
    }

    public void setSortData(String sortData) {
        this.sortData = sortData;
    }
    }