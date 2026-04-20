# NHL-Goal-Heat-Map-24-25-Season

In this project, I used data from 
"NHL clean shots data (2020-2021 to 2024-2025)" from user "SAMUARG" on Kaggle
to display a heatmap of what angles goals were more commonly scored from 
First I wanted to filter shots from "20242025" in the dataset,
and specify that the only shots I wanted were "goals"
I then ran a summary of my goals dataframe, where I saw
that xCoord had negative and positive values to define
what sides of the ice the goals were being scored on.
Considering I wanted to mirror the shots on the "-" side of the ice
so that all the goals were being showed on the same side,
I did the absolute value of xCoord in my mutate.

To plot the data, I felt a heatmap would best describe the data.
After setting up my coordinates and using stat_density_2d
for the heatmap and setting parameters such as fill = ..level..,
and geom = "polygon" to make it understandable,
I wanted to show where the goal was to paint an even better picture 
to show where goals were flying in from. 
Knowing that the nets in hockey are 89 feet from center ice, 
I added a geom_vline across 89 on my x intercept.

When looking at the plot it is fairly obvious most goals 
come from the center of the ice at a distance of about 7-8 feet out.
