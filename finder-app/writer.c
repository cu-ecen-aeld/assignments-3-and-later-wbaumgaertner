#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
   openlog(NULL,0,LOG_USER);
   if(argc!=3)
   {
	   syslog(LOG_ERR, "Invalid number of arguments: %d", argc-1);
	   closelog();
	   return 1;
   }
   FILE *filePtr;
   filePtr = fopen(argv[1], "w");
   if (filePtr == NULL)
   {
	  syslog(LOG_ERR, "Error opening file: %s", argv[1]);
	  closelog();
      return 1;
   }

   fprintf(filePtr, "%s", argv[2]);
   syslog(LOG_DEBUG, "Writing %s to file %s", argv[2], argv[1]);
   fclose(filePtr);
   closelog();
   return 0;
}
