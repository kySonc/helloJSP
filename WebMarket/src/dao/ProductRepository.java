package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	//상품목록을 저장하기 위한 ArrayList<Product>객체타입의 변수 listOfProduct 작성
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	//상품 정보를 설정하고 listOfProducts에 저장
	public ProductRepository() {
		
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		
		phone.setDescription("4,7-inch, 1334X750 Renina HD display, 8-megapixel iSight CameraL");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		
		notebook.setDescription("13,3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		
		tablet.setDescription("212.8123.6*6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	//listOfProduct에 저장된 모든 상품 목록을 가져오는 getAllProduct()메소드
			public ArrayList<Product> getAllProducts(){
				return listOfProducts;
	}
	
	//상품 상세 정보를 가져오는 메소드
	public Product getProductById(String productId) {
		Product productById = null;
	//객체 변수 listOfProducts에 저장된 모든 상품 목록에서 상품아이디와 일치하는 상품 가져오기	
		for(int i = 0; i< listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		return productById;
	}
}