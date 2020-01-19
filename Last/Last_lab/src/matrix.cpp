#include "matrix.h"
#include <QDebug>
#include <QStack>

using namespace std;


Matrix::Matrix() : QObject()
{
    size = 3;
    mas = new float*[size];
    path = new float[size];
    for(int i=0; i<size; i++)
    {
        mas[i]=new float[size];
    }
    for(int i=0; i<size; i++)
    {
        for(int j=0; j<size; j++)
        {
            if (i == j) {
                mas[i][j]=-1;
            }
            else {
                mas[i][j]=1;
            }
        }
    }
}

Matrix::Matrix(int size_) : QObject()
{
    size=size_;
    mas = new float*[size];
    for(int i=0; i<size; i++)
    {
        mas[i]=new float[size];
    }
    for(int i=0; i<size; i++)
    {
        for(int j=0; j<size; j++)
        {
            if (i == j) {
                mas[i][j]=-1;
            }
            else {
                mas[i][j]=1;
            }
        }
    }
}

int Matrix::getSize()
{
    return this->size;
}

void Matrix::reload(int s)
{
    for (int i =0; i < this->size; i++) {
        delete[] mas[i];
    }
    delete[] mas;

    this->size = s;
    mas = new float*[size];
    for(int i=0; i<size; i++)
    {
        mas[i]=new float[size];
    }
    for(int i=0; i<size; i++)
    {
        for(int j=0; j<size; j++)
        {
            if (i == j) {
                mas[i][j]=-1;
            }
            else {
                mas[i][j]=1;
            }
        }
    }
}

Matrix::Matrix(const Matrix& m)
{
    size=m.size;
    mas = new float*[size];
    for(int i=0; i<size; i++)
    {
        mas[i]=new float[size];
    }
    for(int i=0; i<m.size; i++)
    {
        for(int j=0; j<m.size; j++)
        {
            mas[i][j]=m.mas[i][j];
        }
    }
}

Matrix Matrix::operator = (Matrix c)
{
    size=c.size;
    for(int i=0; i<c.size; i++)
    {
        for(int j=0; j<c.size; j++)
        {
            mas[i][j]=c.mas[i][j];
        }
    }
    return *this;
}


float Matrix::getElement(int i, int j)
{
    return this->mas[i][j];
}

int Matrix::getPath(int i)
{
   if (this->path[i] !=0)
       return i;
}


void Matrix::setElement(QString a, int i, int j)
{
    float a_ = a.toFloat();
    this->mas[i][j] = a_;
    emit matrixChanged();
}

void Matrix::print()
{
    int l = this->size;

    for (int i = 0; i < l; i++) {
        for (int j = 0; j < l; j++) {
            qDebug() << this->mas[i][j] << " ";
        }
        qDebug() << "\n";
    }
}

void Matrix::setSize(int s) {
    this->size = s;
    emit sizeChanged();
}

float** Matrix::getMas() {
    return this->mas;
}

void Matrix::obhod() {
    for (int i = 0; i < this->size; i++)
        this->path[i] = 0;
    QStack<int> stack;
    stack.push(0);
    while (!stack.empty()){
        int node = stack.top();
        stack.pop();
        if (this->path[node] == 2)
            continue;
        this->path[node] = 2;
        for(int j = this->size - 1; j >= 0; j--) {
            if(this->mas[node][j] == 1 && this->path[j] != 2) {
                stack.push(j);
                this->path[j] = 1;
            }
        }
    }
}
