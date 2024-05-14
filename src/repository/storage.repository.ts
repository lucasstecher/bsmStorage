import { PrismaClient } from '@prisma/client'

export class StorageRepository {
  _prismaClient

  constructor() {
    this._prismaClient = new PrismaClient()
  }

  public async getAllRecords(): Promise<any> {
    const record = await this._prismaClient.storage.findMany();
    return record
  }

  public async saveRecord(): Promise<any> {
    await this._prismaClient.storage.create({
      data: {
        quadrant: "t421414est",
        designation: "1233TEST",
      }
    })
  }
}
