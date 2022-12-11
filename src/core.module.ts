import { Logger, Module } from "@nestjs/common";
import { PrismaService } from "./prisma.service";

@Module({
  imports: [],
  providers: [PrismaService, Logger],
  exports: [PrismaService],
})
export class CoreModule {}
