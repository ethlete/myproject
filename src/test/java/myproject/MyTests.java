package myproject;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

public class MyTests {
	
	public static Set<UUID> generateUUIDs(int amount) {
		Set<UUID> uuids = new HashSet<>(amount);
		for(int i=0; i<amount; i++)
			uuids.add(UUID.randomUUID());
		
		return uuids;
	}
	
	public static void main(String[] args) {
		for(UUID uuid: generateUUIDs(240))
			System.out.println(uuid.toString());
	}

}
