-- CreateTable
CREATE TABLE "Storage" (
    "id" SERIAL NOT NULL,
    "quadrant" VARCHAR(255) NOT NULL,
    "designation" VARCHAR(255) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Storage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Quadrant" (
    "id" SERIAL NOT NULL,
    "item" VARCHAR(255) NOT NULL,
    "item_quantity" INTEGER NOT NULL,
    "quadrantCoordenates" TEXT NOT NULL,

    CONSTRAINT "Quadrant_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Storage_quadrant_key" ON "Storage"("quadrant");

-- AddForeignKey
ALTER TABLE "Quadrant" ADD CONSTRAINT "Quadrant_quadrantCoordenates_fkey" FOREIGN KEY ("quadrantCoordenates") REFERENCES "Storage"("quadrant") ON DELETE RESTRICT ON UPDATE CASCADE;
