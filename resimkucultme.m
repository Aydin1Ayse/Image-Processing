I_in=imread('rose.tif')
%subsampling
for k=2:7
    [m,n] = size(I_in);
    m1 = floor(m/2);
    n1 = floor(n/2);
    newI_in = zeros(m1,n1);
    i1=1;
    for i=1:2:m-2
        j1 = 1;
        for j=1:2:n-2
            newI_in(i1,j1) = sum(sum(I_in(i:i+1,j:j+1)))/4;
            j1=j1+1;
        end
        i1=i1+1;
    end
    figure;imshow(newI_in,[]);
    I_in = newI_in;
end

