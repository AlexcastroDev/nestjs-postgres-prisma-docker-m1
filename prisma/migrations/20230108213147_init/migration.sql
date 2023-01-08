-- CreateTable
CREATE TABLE "Cities" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Cities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Flights" (
    "id" SERIAL NOT NULL,
    "origin_id" INTEGER NOT NULL,
    "destination_id" INTEGER NOT NULL,

    CONSTRAINT "Flights_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Flights" ADD CONSTRAINT "Flights_origin_id_fkey" FOREIGN KEY ("origin_id") REFERENCES "Cities"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
