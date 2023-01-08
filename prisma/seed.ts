import { PrismaClient } from '@prisma/client';
import Flights from "./seeds/Flights"
import Cities from './seeds/Cities';

const prisma = new PrismaClient()

async function create() {
    for(let data of Cities) {
        await prisma.cities.create({
            data
        })
    }
    // TODO: Fix type error
    // for(let data of Flights) {
    //     await prisma.flights.create({
    //         data
    //     })
    // }
}

create().catch((e) => {
    console.log(e)
    process.exit(1)
}).finally(() => {
    prisma.$disconnect()
})