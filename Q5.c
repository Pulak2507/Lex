#include<stdio.h>
#include<string.h>

int main(){

    char arr[20];
    int i, count =0;

    printf("Enter the 7-bit binary string: ");
    scanf("%s", arr);

    int len = strlen(arr);
    for(int i=0; i<len; i++){
        if(arr[i]=='1'){
            count++;
        }
    }

    if(count%2==0){
        arr[len++]='1';
    }else{
        arr[len++]='0';
    }
        printf("\n----USING ODD PARITY---\n\nString with parity bit: ");
        for(i=0;i<len;i++){
            printf("%c", arr[i]);
        }

        return 0;
}