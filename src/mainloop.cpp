#include<iostream>
#include"multiply.hpp"

namespace mainloop{
    void maindialog()
    {
        for(;;)
        {
            double num1,num2;
            int exit;

            std::cout<<"Enter 1 to continue or 0 to Exit:"<<std::endl;
            std::cin >> exit;
            if(exit != 0)
            {
                std::cout<<"Number1:";
                std::cin >> num1;
                std::cout <<"Number2:";
                std::cin >> num2;

                std::cout << multiply::multiply(num1,num2) << std::endl;
            }
            else
            {
                break;
            }
            


            


        
        }

    }
}