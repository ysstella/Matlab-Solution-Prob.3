exp = input('Input the experimental points (xe,ye) in nx2 matrix form: ');
xe = exp(:,1);
ye = exp(:,2); 
for m = 1:10
    if m < size(xe,1)
        ply = polyfit(xe,ye,m);
        fx = polyval(ply,xe);
        er = ye - fx;
        if m == 1 || maxe > norm(er) 
            maxe = norm(er);
            maxd = m; 
        end
    end
end
ply = polyfit(xe,ye,maxd);
fprintf('The coefficients in polynomial curve fitting are: \n')
disp(ply);