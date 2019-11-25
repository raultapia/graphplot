%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                             graphplot.m                              %%%%%
%%%%%                              Raul Tapia                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% @file   graphplot.m
% @brief  A MATLAB/GNU Octave function to plot graphics.
% @author Raul Tapia (github.com/rautaplop).

function graphplot(x,y,info)
    if(~info.sub)
        figure('Color',[1 1 1]);
    else
        if(info.sub(3) == 1)
            figure('Color',[1 1 1]);
        end
        subplot(info.sub(1),info.sub(2),info.sub(3));
    end
    hold on;

    for i = 1:length(y)
        plot(x,y{i},info.color{i});
    end
    if length(info.sub) > 1
        legend(info.legend);
    end

    title(info.title);      %Title
    xlabel(info.xlabel);    %Label x
    ylabel(info.ylabel);    %Label y
    grid on;                %Grid
    grid minor;             %Grid

    if info.print           %Save as
        saveas(gcf,info.print);
    end
end
