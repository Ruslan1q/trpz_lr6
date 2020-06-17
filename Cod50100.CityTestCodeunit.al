// codeunit 50101 "City TestCodeunit"
// {
//     procedure TestCity(): Boolean
//     var
//         City: Record City;
//         LibraryRandom: Codeunit "Library API - General Test"
//     begin
//         City.Init();
//         City.Code := LibraryRandom.ReandomCode(20);
//         City.Name := LibraryRandom.RandomText(100);
//         City."No." := LibraryRandom.RandomInt();
//         City."No. of Buldings" := LibraryRandom.RandomInt();
//         City."People Count" := LibraryRandom.RandomInt();
//         City."Post Code" := LibraryRandom.RandomText(100);
//         City."Regional Manager" := LibraryRandom.ReandomCode(20);
//         City."Regional Manager Name" := LibraryRandom.RandomText(100);
//         City.Square := LibraryRandom.RandomDecimal();
//         if City.Insert() then
//             exit(True)
//         else
//             exit(False);

//     end;


