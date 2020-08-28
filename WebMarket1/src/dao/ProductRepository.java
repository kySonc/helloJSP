package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	//��ǰ����� �����ϱ� ���� ArrayList<Product>��üŸ���� ���� listOfProduct �ۼ�
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	//�ű� ��ǰ �����͸� �����ϴ� �޼ҵ� ����� �߰�
	//ProductRepository Ŭ������ �⺻ �����ڿ� ���� ��ü ���� instance�� �ۼ�
	private static ProductRepository instance = new ProductRepository();
	
	//��ü ���� instance�� ���� Getter()�޼ҵ� �ۼ�
	public static ProductRepository getInstance() {
		return instance;
	}
	
	//��ü ���� listOfProducts�� ���ο� ��ǰ ������ ����ϴ� addProduct()�޼ҵ带 �ۼ�
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
	//��ǰ ������ �����ϰ� listOfProducts�� ����
	public ProductRepository() {
		
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		
		phone.setDescription("4,7-inch, 1334X750 Renina HD display, 8-megapixel iSight CameraL");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		//productRepository Ŭ������ �⺻ �����ڿ� ��ǰ �̹����� �����ϱ�
		phone.setFilename("P1234.png");
		
		Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
		
		notebook.setDescription("13,3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		//productRepository Ŭ������ �⺻ �����ڿ� ��ǰ �̹����� �����ϱ�
		notebook.setFilename("P1235.png");		
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		
		tablet.setDescription("212.8123.6*6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		//productRepository Ŭ������ �⺻ �����ڿ� ��ǰ �̹����� �����ϱ�
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	//listOfProduct�� ����� ��� ��ǰ ����� �������� getAllProduct()�޼ҵ�
			public ArrayList<Product> getAllProducts(){
				return listOfProducts;
	}
	
	//��ǰ �� ������ �������� �޼ҵ�
	public Product getProductById(String productId) {
		Product productById = null;
	//��ü ���� listOfProducts�� ����� ��� ��ǰ ��Ͽ��� ��ǰ���̵�� ��ġ�ϴ� ��ǰ ��������	
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
