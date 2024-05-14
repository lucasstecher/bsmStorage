const PORT = 3001 || process.env.PORT;
import { StorageRepository } from "./repository/storage.repository";

async ()=> {
  const storage = new StorageRepository();
  storage.getAllRecords();
}

console.log(`Server started at: http://localhost/${PORT}`);
