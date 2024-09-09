*** Variables ***
@{countries}       Japan   Germany  Ghana  Finland  Maxico


*** Test Cases ***
My List
     [Tags]        lists

#     Log           ${countries}
##     Log          ${countries}[0]
##     Log          ${countries}[1]
#
##Length 4
## Japan =0
## Finland =3
## Maxico =4
#     ${length}=      Get Length     ${countries}
#         Log   ${length}
#
#      FOR    ${i}    IN RANGE    0    ${length}
#         Log    This is: ${countries}[${i}]
#
#      END

      FOR    ${counter}    IN RANGE    1    10001
           Log    ${counter}

      END










