-- CreateTable
CREATE TABLE "Event" (
    "uid" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Person" (
    "uid" TEXT NOT NULL PRIMARY KEY,
    "number" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "eventUid" TEXT NOT NULL,
    CONSTRAINT "Person_eventUid_fkey" FOREIGN KEY ("eventUid") REFERENCES "Event" ("uid") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Time" (
    "uid" TEXT NOT NULL PRIMARY KEY,
    "time" TEXT NOT NULL,
    "personUid" TEXT NOT NULL,
    CONSTRAINT "Time_personUid_fkey" FOREIGN KEY ("personUid") REFERENCES "Person" ("uid") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Time_personUid_key" ON "Time"("personUid");
