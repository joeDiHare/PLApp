%% this function reads a bew xls file and produces all the necessary code
clear all; clc;

%% load calendar for 2016
calendar = [...
NaN NaN NaN NaN 1	2	3
4	5	6	7	8	9	10
11	12	13	14	15	16	17
18	19	20	21	22	23	24
25	26	27	28	29	30	31
NaN NaN NaN NaN NaN NaN NaN
1	2	3	4	5	6	7
8	9	10	11	12	13	14
15	16	17	18	19	20	21
22	23	24	25	26	27	28
29	NaN NaN NaN NaN NaN NaN 					
NaN NaN NaN NaN NaN NaN NaN
NaN 1	2	3	4	5	6
7	8	9	10	11	12	13
14	15	16	17	18	19	20
21	22	23	24	25	26	27
28	29	30	31	NaN NaN NaN 		
NaN NaN NaN NaN NaN NaN NaN
NaN NaN NaN NaN 1	2	3
4	5	6	7	8	9	10
11	12	13	14	15	16	17
18	19	20	21	22	23	24
25	26	27	28	29	30	NaN 
NaN NaN NaN NaN NaN NaN NaN
NaN NaN NaN NaN NaN NaN 1
2	3	4	5	6	7	8
9	10	11	12	13	14	15
16	17	18	19	20	21	22
23	24	25	26	27	28	29
30	31	NaN NaN NaN NaN NaN 				
NaN NaN 1	2	3	4	5
6	7	8	9	10	11	12
13	14	15	16	17	18	19
20	21	22	23	24	25	26
27	28	29	30	NaN NaN NaN 		
NaN NaN NaN NaN NaN NaN NaN
NaN NaN NaN NaN 1	2	3
4	5	6	7	8	9	10
11	12	13	14	15	16	17
18	19	20	21	22	23	24
25	26	27	28	29	30	31
NaN NaN NaN NaN NaN NaN NaN
1	2	3	4	5	6	7
8	9	10	11	12	13	14
15	16	17	18	19	20	21
22	23	24	25	26	27	28
29	30	31	NaN NaN NaN NaN 			
NaN NaN NaN NaN NaN NaN NaN
NaN NaN NaN 1	2	3	4
5	6	7	8	9	10	11
12	13	14	15	16	17	18
19	20	21	22	23	24	25
26	27	28	29	30	NaN NaN 	
NaN NaN NaN NaN NaN NaN NaN
NaN NaN NaN NaN NaN 1	2
3	4	5	6	7	8	9
10	11	12	13	14	15	16
17	18	19	20	21	22	23
24	25	26	27	28	29	30
31	NaN NaN NaN NaN NaN NaN 					
NaN NaN NaN NaN NaN NaN NaN
NaN 1	2	3	4	5	6
7	8	9	10	11	12	13
14	15	16	17	18	19	20
21	22	23	24	25	26	27
28	29	30	NaN NaN NaN NaN 			
NaN NaN NaN NaN NaN NaN NaN
NaN NaN NaN 1	2	3	4
5	6	7	8	9	10	11
12	13	14	15	16	17	18
19	20	21	22	23	24	25
26	27	28	29	30	31	NaN
NaN NaN NaN NaN NaN NaN NaN];
% calendar 2015
% calendar = [...
% NaN NaN NaN 1	2	3	4
% 5	6	7	8	9	10	11
% 12	13	14	15	16	17	18
% 19	20	21	22 	23	24	25
% 26	27	28	29	30	31	NaN
% NaN NaN NaN NaN NaN NaN NaN
% NaN NaN NaN NaN NaN NaN 1
% 2	3	4	5	6	7	8
% 9	10	11	12	13	14	15
% 16	17	18	19	20	21	22
% 23	24	25	26	27	28	NaN
% NaN NaN NaN NaN NaN NaN NaN
% NaN NaN NaN NaN NaN NaN 1
% 2	3	4	5	6	7	8
% 9	10	11	12	13	14	15
% 16	17	18	19	20	21	22
% 23	24	25	26	27	28	29
% 30	31	NaN NaN NaN NaN NaN
% NaN NaN 1	2	3	4	5
% 6	7	8	9	10	11	12
% 13	14	15	16	17	18	19
% 20	21	22	23	24	25	26
% 27	28	29	30	NaN NaN NaN
% NaN NaN NaN NaN NaN NaN NaN
% NaN NaN NaN NaN 1	2	3
% 4	5	6	7	8	9	10
% 11	12	13	14	15	16	17
% 18	19	20	21	22	23	24
% 25	26	27	28	29	30	31
% NaN NaN NaN NaN NaN NaN NaN
% 1	2	3	4	5	6	7
% 8	9	10	11	12	13	14
% 15	16	17	18	19	20	21
% 22	23	24	25	26	27	28
% 29	30	NaN NaN NaN NaN NaN 
% NaN NaN NaN NaN NaN NaN NaN
% NaN NaN 1	2	3	4	5
% 6	7	8	9	10	11	12
% 13	14	15	16	17	18	19
% 20	21	22	23	24	25	26
% 27	28	29	30	31	NaN NaN 
% NaN NaN NaN NaN NaN NaN NaN
% NaN NaN NaN NaN NaN 1	2
% 3	4	5	6	7	8	9
% 10	11	12	13	14	15	16
% 17	18	19	20	21	22	23
% 24	25	26	27	28	29	30
% 31	NaN NaN NaN NaN NaN NaN 
% NaN 1	2	3	4	5	6
% 7	8	9	10	11	12	13
% 14	15	16	17	18	19	20
% 21	22	23	24	25	26	27
% 28	29	30	NaN NaN NaN NaN
% NaN NaN NaN NaN NaN NaN NaN            
% NaN NaN NaN 1	2	3	4
% 5	6	7	8	9	10	11
% 12	13	14	15	16	17	18
% 19	20	21	22	23	24	25
% 26	27	28	29	30	31	NaN
% NaN NaN NaN NaN NaN NaN NaN            
% NaN NaN NaN NaN NaN NaN 1
% 2	3	4	5	6	7	8
% 9	10	11	12	13	14	15
% 16	17	18	19	20	21	22
% 23	24	25	26	27	28	29
% 30	NaN NaN NaN NaN NaN NaN             
% NaN 1	2	3	4	5	6
% 7	8	9	10	11	12	13
% 14	15	16	17	18	19	20
% 21	22	23	24	25	26	27
% 28	29	30	31  NaN NaN NaN
% NaN NaN NaN NaN NaN NaN NaN];
rr=1; cc=0; calendar_cmp=NaN(floor(length(calendar)/7),7);
for r=1:length(calendar)
    for c=1:7
        if ~isnan(calendar(r,c))
            cc=cc+1;
            if cc==8, cc=1; rr=rr+1;end
            calendar_cmp(rr,cc)=calendar(r,c);
        end
    end
end
for m=1:12 % find max per month
    tmp = calendar(1+6*(m-1):6*m,:);
    maxmon(m)=nanmax(tmp(:));
end


%%


path_d = 'C:\Users\sc04\Documents\MATLAB\container-plapp';
package_nam='com.plapp.playlistapp';


%% copy plapp folder into current and read from excel file plapp

source_fld = 'C:\Users\sc04\Documents\Android_proj\PlayListApp';
filename = 'file_plapp.xls';
format long;
[num, txt, raw] = xlsread(strcat(path_d,'\',filename));

name_app = txt{3,4};%'PlayListApp2'; app name!

[status,message,messageid] = copyfile(source_fld,strcat(path_d,'\',name_app)); pause(1);


%% download contents from xlsx

tot_sng = length(txt(9:end,3));
C=7;
%%% find date
date_in = regexprep(lower(txt{5,4}),{'[a-z]' ':'},'');
tmp = findstr(date_in,'/');
day=str2num(date_in(1:tmp(1)-1));
mon=str2num(date_in(tmp(1)+1:tmp(2)-1));
yea=str2num(date_in(end-1:end));


%%% add date checks
if day>maxmon(mon), errordlg('wrong day of the month','wrong day of the month'); end
if mon>12,          errordlg('wrong month','wrong month'); end
if yea~=16,          errordlg('wrong year','wrong year'); end

raw_days_tmp=calendar(1+(mon-1)*6:end,:); %6 is the no of rows per month
% remove weeks with full NaNs
tot_days = -7; n=0; nn=1; nnanc=1; flag_after_first=false;
while tot_days<tot_sng
    n=n+1;
    if ~(sum(isnan(raw_days_tmp(n,:)))==C)
        % do nothing if the row contains all NaN
        if nanmax(raw_days_tmp(n,:))>=day || nn>1
            raw_days(nn,:)=raw_days_tmp(n,:);
            tot_days = tot_days + sum(~isnan(raw_days(nn,:)));
            nn=nn+1;
        else nnanc = nnanc + 1;
        end    
        else nnanc = nnanc + 1;
    end
end
row_of_day = nnanc;%1+(n-nn);
[tmp1,tmp2]=find(raw_days==day); 
a = min(tmp1);
ID_first_day = tmp2(argmin(tmp1));
raw_days_col=reshape(raw_days.',1,[]);
raw_days_col_nan = raw_days_col(ID_first_day:end);
raw_days_col_nan = raw_days_col_nan(~isnan(raw_days_col_nan));
days_active = raw_days_col_nan(1:tot_sng);
k=0; res=0;
while res<length([NaN(1,ID_first_day-1) days_active])
    k=k+1; res=C*k;
end
rem_nan_end = res-length([NaN(1,ID_first_day-1) days_active]);
all_days=[NaN(1,ID_first_day-1) days_active NaN(1,rem_nan_end)];
R=length(all_days)/7;
days = reshape(all_days,7,R)';

tot_elem= C*R;
tot_nan = tot_elem-tot_sng;

tmp=calendar(1:(mon-1)*6+row_of_day,:); %6 is the no of rows per month
tmp2 = reshape(tmp',[],1)'; 
tmp_not_nan = sum(~isnan(tmp(:))) - (C-ID_first_day+1);
day_of_the_tr = tmp_not_nan + (1:tot_sng);

sum(sum(~isnan(days)))

%%%%
for n=1:tot_sng
%     IDs_sng(n)=num(n+2,2);
    Lnk_sng{n}=txt{n+8,3};
    Msg_txt{n}=txt{n+8,4};
 end


flag_dates_label = true;
layout_height = 55;
layout_width  = 40;
paddingTop    = 15;
FontSizeBtn   = 15;
FontSizeLbl   = 13;
days_table = {'Mo' 'Tu' 'We' 'Th' 'Fr' 'Sa' 'Su'};
%%% set all values here


%% create xml main
fold_within = strcat('\',name_app,'\app\src\main\res\layout\');
fid_main_xml = fopen(strcat(path_d,fold_within,'activity_main','.xml'),'w');

fprintf(fid_main_xml,'<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"\n');
fprintf(fid_main_xml,'\txmlns:tools="http://schemas.android.com/tools"\n');
fprintf(fid_main_xml,'\tandroid:layout_width="match_parent"\n');
fprintf(fid_main_xml,'\tandroid:layout_height="match_parent"\n');
fprintf(fid_main_xml,'\tandroid:orientation="vertical"\n');
fprintf(fid_main_xml,'\tandroid:paddingBottom="@dimen/activity_vertical_margin"\n');
fprintf(fid_main_xml,'\tandroid:paddingLeft="@dimen/activity_horizontal_margin"\n');
fprintf(fid_main_xml,'\tandroid:paddingRight="@dimen/activity_horizontal_margin"\n');
fprintf(fid_main_xml,'\tandroid:paddingTop="@dimen/activity_vertical_margin"\n');
fprintf(fid_main_xml,'\tandroid:background="#fff" >\n');


fprintf(fid_main_xml,'\n\t<ScrollView\n');
fprintf(fid_main_xml,'\tandroid:layout_width="fill_parent"\n');
fprintf(fid_main_xml,'\tandroid:layout_height="fill_parent"\n');
fprintf(fid_main_xml,'\tandroid:scrollbars="none"\n');
fprintf(fid_main_xml,'\tandroid:id="@+id/scrollView">\n');

    fprintf(fid_main_xml,'\n\t\t<LinearLayout\n');
    fprintf(fid_main_xml,'\t\t\tandroid:orientation="vertical"\n');
    fprintf(fid_main_xml,'\t\t\tandroid:layout_width="match_parent"\n');
    fprintf(fid_main_xml,'\t\t\tandroid:layout_height="wrap_content">\n');
    

fprintf(fid_main_xml,'\n<EditText\n');
fprintf(fid_main_xml,'\tandroid:layout_width="match_parent"\n');
fprintf(fid_main_xml,'\tandroid:layout_height="match_parent"\n');
fprintf(fid_main_xml,'\tandroid:text="@string/msg_to_display"\n');
fprintf(fid_main_xml,'\tandroid:id = "@+id/display"\n');
fprintf(fid_main_xml,'\tandroid:hint="@string/disp"\n');
% fprintf(fid_main_xml,'\tandroid:password="false"\n');
% fprintf(fid_main_xml,'\tandroid:editable="false"\n');
fprintf(fid_main_xml,'\tandroid:enabled="false"\n');
fprintf(fid_main_xml,'\tandroid:inputType="none" />\n\n');

fprintf(fid_main_xml,'<LinearLayout\n');
fprintf(fid_main_xml,'\tandroid:orientation="horizontal"\n');
fprintf(fid_main_xml,'\tandroid:layout_width="fill_parent"\n');
fprintf(fid_main_xml,'\tandroid:layout_height="wrap_content"\n');
fprintf(fid_main_xml,'\tandroid:layout_gravity="center"\n');
fprintf(fid_main_xml,'\tandroid:gravity="center"\n');
fprintf(fid_main_xml,'\tandroid:paddingTop="0dp">\n');

    fprintf(fid_main_xml,'\n\t<ImageButton\n');
    fprintf(fid_main_xml,'\t\tandroid:layout_width="wrap_content"\n');
    fprintf(fid_main_xml,'\t\tandroid:layout_height="wrap_content"\n');
    fprintf(fid_main_xml,'\t\tandroid:src="@drawable/playgray"\n');
    fprintf(fid_main_xml,'\t\tandroid:background="@android:color/transparent"\n');
    fprintf(fid_main_xml,'\t\tandroid:id = "@+id/go_to_link"/>\n');
%     fprintf(fid_main_xml,'\t\tandroid:text="go to link" />\n');
fprintf(fid_main_xml,'</LinearLayout>\n');

%%% first row of buttons with dates
if flag_dates_label
fprintf(fid_main_xml,'\n<LinearLayout'); 
    fprintf(fid_main_xml,'\n\tandroid:orientation="horizontal"');			        	        
    fprintf(fid_main_xml,'\n\tandroid:layout_width="fill_parent"');			
    fprintf(fid_main_xml,'\n\tandroid:layout_height="wrap_content"');			
    fprintf(fid_main_xml,'\n\tandroid:layout_gravity="center"');
    fprintf(fid_main_xml,'\n\tandroid:gravity="center"');			
    fprintf(fid_main_xml,'\n\tandroid:paddingTop="%ddp"',paddingTop);
    fprintf(fid_main_xml,'>\n');
for c=1:C
    fprintf(fid_main_xml,'\n\t<EditText');			
    fprintf(fid_main_xml,'\n\t\tandroid:layout_width = "%ddp"', 0);
    fprintf(fid_main_xml,'\n\t\tandroid:layout_weight = "%d"', 1);
    fprintf(fid_main_xml,'\n\t\tandroid:gravity= "center"');
    fprintf(fid_main_xml,'\n\t\tandroid:layout_height = "wrap_content"');			
    fprintf(fid_main_xml,'\n\t\tandroid:id = "@+id/day_label%d"',c);			
    fprintf(fid_main_xml,'\n\t\tandroid:text = "%s"',days_table{c});					
    fprintf(fid_main_xml,'\n\t\tandroid:enabled="false"');			
    fprintf(fid_main_xml,'\n\t\tandroid:inputType="none"');			
    fprintf(fid_main_xml,'\n\t\tandroid:textSize = "%dsp"',FontSizeLbl);	
    fprintf(fid_main_xml,' />\n');
    i = i+1;
end
fprintf(fid_main_xml,'</LinearLayout>\n');
end
i=0; nan_i=0;
%%% layout containing button grid
for r=1:R
    %%% start with definition of the linear layout
        fprintf(fid_main_xml,'\n<LinearLayout'); 
        fprintf(fid_main_xml,'\n\tandroid:orientation="horizontal"');			        	        
        fprintf(fid_main_xml,'\n\tandroid:layout_width="fill_parent"');			
        fprintf(fid_main_xml,'\n\tandroid:layout_height="wrap_content"');			
        fprintf(fid_main_xml,'\n\tandroid:layout_gravity="center"');
        fprintf(fid_main_xml,'\n\tandroid:gravity="center"');			
        fprintf(fid_main_xml,'\n\tandroid:paddingTop="%ddp"',paddingTop);        
        fprintf(fid_main_xml,'>\n');

    %%% button grid now
    for c=1:C
        fprintf(fid_main_xml,'\n\t<Button');			
        fprintf(fid_main_xml,'\n\t\tandroid:layout_width = "%ddp"', 0);			
        fprintf(fid_main_xml,'\n\t\tandroid:layout_weight = "%d"', 1);			
        fprintf(fid_main_xml,'\n\t\tandroid:layout_height = "wrap_content"');					
        fprintf(fid_main_xml,'\n\t\tandroid:textSize = "%dsp"',FontSizeBtn);	
        if isnan(days(r,c)) % to accomodate starting on a day ~= Mon
            nan_i = nan_i+1;
            fprintf(fid_main_xml,'\n\t\tandroid:id = "@+id/btn_nan%d"',nan_i); 
            fprintf(fid_main_xml,'\n\t\tandroid:visibility="invisible"');     
            fprintf(fid_main_xml,'\n\t\tandroid:text = "%d"',0);	
        else
            i = i+1;
            fprintf(fid_main_xml,'\n\t\tandroid:id = "@+id/btn%d"',i);
            fprintf(fid_main_xml,'\n\t\tandroid:text = "%d"',days(r,c));	
        end 
        
%         fprintf(fid_main_xml,'\nandroid:textSize="%dsp"',15);
%         fprintf(fid_main_xml,'\nandroid:padding="%ddp"',2);
        fprintf(fid_main_xml,' />');
    end    
    fprintf(fid_main_xml,'\n</LinearLayout>\n');
end
fprintf(fid_main_xml,'\n\t<LinearLayout');
fprintf(fid_main_xml,'\n\tandroid:orientation="horizontal"');			        	        
fprintf(fid_main_xml,'\n\tandroid:layout_width="fill_parent"');			
fprintf(fid_main_xml,'\n\tandroid:layout_height="wrap_content"');			
fprintf(fid_main_xml,'\n\tandroid:layout_gravity="center"');
fprintf(fid_main_xml,'\n\tandroid:gravity="center"');			
fprintf(fid_main_xml,'\n\tandroid:paddingTop="%ddp">\n',paddingTop);        

fprintf(fid_main_xml,'\n\t\t<CheckBox');			        	        
fprintf(fid_main_xml,'\n\t\t\tandroid:layout_width="wrap_content"');			
fprintf(fid_main_xml,'\n\t\t\tandroid:layout_height="wrap_content"');			
fprintf(fid_main_xml,'\n\t\t\tandroid:text="remind me daily"');
fprintf(fid_main_xml,'\n\t\t\tandroid:id="@+id/checkBox"');			
fprintf(fid_main_xml,'\n\t\t\tandroid:checked="true" />');        
fprintf(fid_main_xml,'\n\t</LinearLayout>\n');

fprintf(fid_main_xml,'\n\t</LinearLayout>');
fprintf(fid_main_xml,'\n</ScrollView>\n');

fprintf(fid_main_xml,'\n</LinearLayout>\n');
fclose(fid_main_xml);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%% script java file for select_songs_activity.class
%% define Buttons and set listener
fold_within = strcat('\',name_app,'\app\src\main\java\com\plapp\playlistapp\');
fid_main_activ = fopen(strcat(path_d,fold_within,'select_songs_activity','.java'),'w');

fprintf(fid_main_activ,'\npackage %s;\n',package_nam);
fprintf(fid_main_activ,'\nimport android.content.Context;');
fprintf(fid_main_activ,'\nimport android.content.Intent;');
fprintf(fid_main_activ,'\nimport android.content.SharedPreferences;');
fprintf(fid_main_activ,'\nimport android.graphics.Color;');
fprintf(fid_main_activ,'\nimport android.graphics.Paint;');
fprintf(fid_main_activ,'\nimport android.graphics.Typeface;');
fprintf(fid_main_activ,'\nimport android.net.Uri;');
fprintf(fid_main_activ,'\nimport android.os.Bundle;');
fprintf(fid_main_activ,'\nimport android.app.Activity;');
fprintf(fid_main_activ,'\nimport android.view.View;');
fprintf(fid_main_activ,'\nimport android.widget.Button;');
fprintf(fid_main_activ,'\nimport android.widget.CheckBox;');
fprintf(fid_main_activ,'\nimport android.widget.EditText;');
fprintf(fid_main_activ,'\nimport android.widget.ImageButton;');
fprintf(fid_main_activ,'\nimport android.widget.Toast;');
fprintf(fid_main_activ,'\nimport java.util.Calendar;\n');


fprintf(fid_main_activ,'\npublic class select_songs_activity extends Activity implements View.OnClickListener {\n\n');
%initialise buttons
fprintf(fid_main_activ,'\n\tButton '); 
for n=1:tot_sng, fprintf(fid_main_activ,' btn%d',n); if n~=tot_sng, fprintf(fid_main_activ,', '); end; end;fprintf(fid_main_activ,';\n');
fprintf(fid_main_activ,'\n\tButton '); 
for n=1:tot_nan, fprintf(fid_main_activ,' btn_nan%d',n); if n~=tot_nan, fprintf(fid_main_activ,', '); end; end;fprintf(fid_main_activ,';\n');
fprintf(fid_main_activ,'\n\tImageButton go_to_link;\n'); 
fprintf(fid_main_activ,'\tCheckBox checkBox;\n'); 
fprintf(fid_main_activ,'\tEditText disp;\n'); 
fprintf(fid_main_activ,'\tString str_link = "a";\n'); 
fprintf(fid_main_activ,'\tAlarmReceiver alarm = new AlarmReceiver();\n'); 
fprintf(fid_main_activ,'\tContext context;\n'); 
   
    
    
%%% define oncreate
fprintf(fid_main_activ,'\n\t@Override');
    fprintf(fid_main_activ,'\n\tpublic void onCreate(Bundle savedInstanceState) {\n');

        fprintf(fid_main_activ,'\n\t\tsuper.onCreate(savedInstanceState);');
        fprintf(fid_main_activ,'\n\t\tsetContentView(R.layout.activity_main);');

        fprintf(fid_main_activ,'\n\n\t\tdisp = (EditText) findViewById(R.id.display);');

%         fprintf(fid_main_activ,'\n\n\t\ttry {\n');                
            
%%% attach listener for btn
for n=1:tot_sng
    fprintf(fid_main_activ,'\n\tbtn%d = (Button)  findViewById(R.id.btn%d);',n,n); 
    fprintf(fid_main_activ,'\tbtn%d.setOnClickListener(this);',n); 
end
%%% attach listener for btn_nan
for n=1:tot_nan
%     fprintf(fid_main_activ,'\n\tbtn_nan%d = (Button)  findViewById(R.id.btn_nan%d);',n,n); 
%     fprintf(fid_main_activ,'\tbtn_nan%d.setOnClickListener(this);',n); 
end
%%% attach listener for go_to_link button
    fprintf(fid_main_activ,'\n\tgo_to_link = (ImageButton)  findViewById(R.id.go_to_link);');
    fprintf(fid_main_activ,'\tgo_to_link.setOnClickListener(this);\n\n'); 
    
%%% highligh day of today AND set text message and link
    fprintf(fid_main_activ,'\n\tint today = Calendar.getInstance().get(Calendar.DAY_OF_YEAR);');
    fprintf(fid_main_activ,'\n\t\t if (today==%d) {btn%d.setPaintFlags(Paint.UNDERLINE_TEXT_FLAG);',day_of_the_tr(1),1);
    fprintf(fid_main_activ,' btn%d.setTypeface(null, Typeface.BOLD);',1); 
    fprintf(fid_main_activ,' btn%d.setTextColor(Color.RED);',1);     
    fprintf(fid_main_activ,'\n\t\t\tdisp.setText("%s");',strrep(Msg_txt{1},'"','''')); 
    fprintf(fid_main_activ,'\n\t\t\tstr_link = "%s";',   strrep(Lnk_sng{1},'"','''')); 
    fprintf(fid_main_activ,'\n\t\t\tgo_to_link.setImageResource(R.drawable.playred);}'); 
    for n=2:tot_sng,
    fprintf(fid_main_activ,'\n\telse if (today==%d) {btn%d.setPaintFlags(Paint.UNDERLINE_TEXT_FLAG);',day_of_the_tr(n),n); 
    fprintf(fid_main_activ,' btn%d.setTypeface(null, Typeface.BOLD);',n); 
    fprintf(fid_main_activ,' btn%d.setTextColor(Color.RED);',n);  
    fprintf(fid_main_activ,'\n\t\t\tdisp.setText("%s");',strrep(Msg_txt{n},'"','''')); 
    fprintf(fid_main_activ,'\n\t\t\tstr_link = "%s";',   strrep(Lnk_sng{n},'"','''')); 
    fprintf(fid_main_activ,'\n\t\t\tgo_to_link.setImageResource(R.drawable.playred);}');     
    end


    
    fprintf(fid_main_activ,'\ncheckBox = (CheckBox) findViewById(R.id.checkBox);\n');
    fprintf(fid_main_activ,'\ncontext = this;\n');
    fprintf(fid_main_activ,'\nif (checkBox.isChecked()) {');
    fprintf(fid_main_activ,'\n\tcheckBox.setChecked(true);');
    fprintf(fid_main_activ,'\n\talarm.setAlarm(this);');
    fprintf(fid_main_activ,'\n} else {');    
    fprintf(fid_main_activ,'\n\tcheckBox.setChecked(false);');    
    fprintf(fid_main_activ,'\n\talarm.cancelAlarm(this);');
    fprintf(fid_main_activ,'\n}\n');         
% %%% close try statement
%     fprintf(fid_main_activ,'\n\t\t} catch (Exception e) {');
%     fprintf(fid_main_activ,'\n\t\t}');
    fprintf(fid_main_activ,'\n\t}\n');
    
    fprintf(fid_main_activ,'\n@Override');
    fprintf(fid_main_activ,'\npublic void onPause(){');
    fprintf(fid_main_activ,'\n\tsuper.onPause();');
    fprintf(fid_main_activ,'\n\tsave(checkBox.isChecked());');
    fprintf(fid_main_activ,'\n}');

    fprintf(fid_main_activ,'\n@Override');
    fprintf(fid_main_activ,'\npublic void onResume(){');
    fprintf(fid_main_activ,'\n\tsuper.onResume();');
    fprintf(fid_main_activ,'\n\tcheckBox.setChecked(load());');
    fprintf(fid_main_activ,'\n}');

    fprintf(fid_main_activ,'\nvoid save(final boolean isChecked) {');
    fprintf(fid_main_activ,'\n\tSharedPreferences sharedPreferences = context.getSharedPreferences("", Context.MODE_PRIVATE);');
    fprintf(fid_main_activ,'\n\tSharedPreferences.Editor editor = sharedPreferences.edit();');
    fprintf(fid_main_activ,'\n\teditor.putBoolean("check", isChecked);');
    fprintf(fid_main_activ,'\n\teditor.commit();');
    fprintf(fid_main_activ,'\n}');
    
    fprintf(fid_main_activ,'\nprivate boolean load() {');
    fprintf(fid_main_activ,'\n\tSharedPreferences sharedPreferences = context.getSharedPreferences("", Context.MODE_PRIVATE);');
    fprintf(fid_main_activ,'\n\treturn sharedPreferences.getBoolean("check", false);');
    fprintf(fid_main_activ,'\n}\n');   
        
    fprintf(fid_main_activ,'\n\t@Override');
    fprintf(fid_main_activ,'\n\tpublic void onClick(View arg0) {');
    
    fprintf(fid_main_activ,'\n\t\tCalendar c = Calendar.getInstance();');
    fprintf(fid_main_activ,'\n\t\tint today = c.get(Calendar.DAY_OF_YEAR);\n');
              
fprintf(fid_main_activ,'\n\t\tswitch(arg0.getId()){'); 
for n=1:tot_sng
    fprintf(fid_main_activ,'\n\t\t\tcase R.id.btn%d:',n); 
    fprintf(fid_main_activ,'\n\t\t\t\tif(%d<=today) {',day_of_the_tr(n));
    fprintf(fid_main_activ,'\n\t\t\t\t\tdisp.setText("%s");',strrep(Msg_txt{n},'"','''')); 
    fprintf(fid_main_activ,'\n\t\t\t\t\tstr_link = "%s";',   strrep(Lnk_sng{n},'"','''')); 
    fprintf(fid_main_activ,'\n\t\t\t\t\tgo_to_link.setImageResource(R.drawable.playred);');    
    fprintf(fid_main_activ,'\n\t\t\t\t}else{');
    fprintf(fid_main_activ,'\n\t\t\t\t\tToast.makeText(this, "ah ah ah, too soon...", Toast.LENGTH_LONG).show();');
    fprintf(fid_main_activ,'\n\t\t\t\t\tgo_to_link.setImageResource(R.drawable.playgray);');    
    fprintf(fid_main_activ,'\n\t\t\t\t}');
    fprintf(fid_main_activ,'\n\t\t\t\tbreak;\n');   
end

fprintf(fid_main_activ,'\t\t\tcase R.id.go_to_link:');
    fprintf(fid_main_activ,'\n\t\t\t\tif(str_link.isEmpty()) {');
    fprintf(fid_main_activ,'\n\t\t\t\t\tToast.makeText(this, "no date selected...", Toast.LENGTH_LONG).show();');
    fprintf(fid_main_activ,'\n\t\t\t\t}else{');
    fprintf(fid_main_activ,'\n\t\t\t\t\tIntent goToLinkIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(str_link));');
    fprintf(fid_main_activ,'\n\t\t\t\t\tstartActivity(goToLinkIntent);');
    fprintf(fid_main_activ,'\n\t\t\t\t}');
    fprintf(fid_main_activ,'\n\t\t\t\tbreak;');
        
fprintf(fid_main_activ,'\n\t\t\t\t}'); fprintf(fid_main_activ,'\n\t\t\t}'); fprintf(fid_main_activ,'\n\t\t}'); 
try    fclose(fid_main_activ);
catch e
end
 
                 
%% Strings / Res
fold_within = strcat('\',name_app,'\app\src\main\res\values\');
fid_strings = fopen(strcat(path_d,fold_within,'strings','.xml'),'w');

fprintf(fid_strings,'<?xml version="1.0" encoding="utf-8"?>');
fprintf(fid_strings,'\n<resources>');
fprintf(fid_strings,'\n\t<string name="app_name">%s</string>',name_app);
fprintf(fid_strings,'\n\t<string name="msg_to_display">I already Miss you!</string>');
fprintf(fid_strings,'\n\t<string name="action_settings">Settings</string>');
fprintf(fid_strings,'\n\t<string name="app_name_slogan">Play me with you</string>');
fprintf(fid_strings,'\n\t<string name="disp">romantic message to be played</string>');
fprintf(fid_strings,'\n\t<string name="title_activity_your_service">YourService</string>');
fprintf(fid_strings,'\n\t<string name="msg_check_new_song">There is a new song for you to check!</string>');
fprintf(fid_strings,'\n</resources>');
fclose(fid_strings);

%% create SchedulingService.java

fold_within = strcat('\',name_app,'\app\src\main\java\com\plapp\playlistapp\');
fid_sched_serv = fopen(strcat(path_d,fold_within,'SchedulingService','.java'),'w');

fprintf(fid_sched_serv,'\npackage %s;\n',package_nam);
fprintf(fid_sched_serv,'\nimport android.app.IntentService;');
fprintf(fid_sched_serv,'\nimport android.app.NotificationManager;');
fprintf(fid_sched_serv,'\nimport android.app.PendingIntent;');
fprintf(fid_sched_serv,'\nimport android.content.Context;');
fprintf(fid_sched_serv,'\nimport android.content.Intent;');
fprintf(fid_sched_serv,'\nimport android.content.SharedPreferences;');
fprintf(fid_sched_serv,'\nimport android.support.v4.app.NotificationCompat;');
fprintf(fid_sched_serv,'\nimport android.util.Log;');
fprintf(fid_sched_serv,'\nimport java.util.Calendar;\n');

fprintf(fid_sched_serv,'\npublic class SchedulingService extends IntentService {\n\n');

fprintf(fid_sched_serv,'\n\tpublic SchedulingService() {');
fprintf(fid_sched_serv,'\n\tsuper("SchedulingService");');
fprintf(fid_sched_serv,'\n\t}');

fprintf(fid_sched_serv,'\n\tpublic static final String TAG = "Scheduling Demo";');
fprintf(fid_sched_serv,'\n\tpublic static final int NOTIFICATION_ID = 1;');    
fprintf(fid_sched_serv,'\n\tprivate NotificationManager mNotificationManager;');    
fprintf(fid_sched_serv,'\n\tContext context;');    
fprintf(fid_sched_serv,'\n\n\t@Override');    
fprintf(fid_sched_serv,'\n\tprotected void onHandleIntent(Intent intent) {\n\n');

fprintf(fid_sched_serv,'\n\tint[] Days = {%d',day_of_the_tr(1)); 
            for n=2:tot_sng, fprintf(fid_sched_serv,',%d',day_of_the_tr(n)); end; 
            fprintf(fid_sched_serv,'};\n');

fprintf(fid_sched_serv,'\n\tcontext = this;');
fprintf(fid_sched_serv,'\n\tSharedPreferences sharedPreferences = context.getSharedPreferences("",Context.MODE_PRIVATE);');
fprintf(fid_sched_serv,'\n\tBoolean stateValue = sharedPreferences.getBoolean("check", false);\n');
fprintf(fid_sched_serv,'\n\tif (stateValue) {');
fprintf(fid_sched_serv,'\n\t\tCalendar c = Calendar.getInstance();');
fprintf(fid_sched_serv,'\n\t\tint today = c.get(Calendar.DAY_OF_YEAR);');
fprintf(fid_sched_serv,'\n\t\tfor (int n : Days) {');
fprintf(fid_sched_serv,'\n\t\t\tif (today == n) {');
fprintf(fid_sched_serv,'\n\t\t\t\tsendNotification(getString(R.string.msg_check_new_song));');
fprintf(fid_sched_serv,'\n\t\t\t\tLog.i(TAG, "New song to check! - day:" + today);');
fprintf(fid_sched_serv,'\n\t\t\t}');
fprintf(fid_sched_serv,'\n\t\t}');
fprintf(fid_sched_serv,'\n\t}');
fprintf(fid_sched_serv,'\n\tAlarmReceiver.completeWakefulIntent(intent);// Release the wake lock provided by the BroadcastReceiver.');
fprintf(fid_sched_serv,'\n\t}\n');

fprintf(fid_sched_serv,'\n\tprivate void sendNotification(String msg) {');
fprintf(fid_sched_serv,'\n\t\tmNotificationManager = (NotificationManager)');
fprintf(fid_sched_serv,'\n\t\t\tthis.getSystemService(Context.NOTIFICATION_SERVICE);\n');
fprintf(fid_sched_serv,'\n\t\tPendingIntent contentIntent = PendingIntent.getActivity(this, 0,');
fprintf(fid_sched_serv,'\n\t\t\tnew Intent(this, select_songs_activity.class), 0);\n');
fprintf(fid_sched_serv,'\n\t\tNotificationCompat.Builder mBuilder =');
fprintf(fid_sched_serv,'\n\t\t\tnew NotificationCompat.Builder(this)');
fprintf(fid_sched_serv,'\n\t\t\t\t.setSmallIcon(R.mipmap.ic_launcher)');
fprintf(fid_sched_serv,'\n\t\t\t\t.setContentTitle(getString(R.string.app_name))');
fprintf(fid_sched_serv,'\n\t\t\t\t.setStyle(new NotificationCompat.BigTextStyle().bigText(msg))');
% fprintf(fid_sched_serv,'\n\t\t\t\t   ');
fprintf(fid_sched_serv,'\n\t\t\t\t.setContentText(msg);');
fprintf(fid_sched_serv,'\n\t\tmBuilder.setContentIntent(contentIntent);');
fprintf(fid_sched_serv,'\n\t\tmNotificationManager.notify(NOTIFICATION_ID, mBuilder.build());');    
fprintf(fid_sched_serv,'\n\t}\n');   
fprintf(fid_sched_serv,'\n}');   

fclose(fid_sched_serv);


%% Manifest / Res
icon_name = 'b64_red';

fold_within = strcat('\',name_app,'\app\src\main\');
fid_manifest = fopen(strcat(path_d,fold_within,'AndroidManifest','.xml'),'w');

fprintf(fid_manifest,'<?xml version="1.0" encoding="utf-8"?>');
fprintf(fid_manifest,'\n<manifest xmlns:android="http://schemas.android.com/apk/res/android"');
fprintf(fid_manifest,'\n\tpackage="%s" >\n',package_nam);  
fprintf(fid_manifest,'\n\t<uses-sdk');
fprintf(fid_manifest,'\n\t\tandroid:minSdkVersion="8"');
fprintf(fid_manifest,'\n\t\tandroid:targetSdkVersion="17" />\n'); 

fprintf(fid_manifest,'\n<uses-permission android:name="android.permission.WAKE_LOCK"></uses-permission>');
fprintf(fid_manifest,'\n<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"></uses-permission>');

fprintf(fid_manifest,'\n<application');
fprintf(fid_manifest,'\n\tandroid:allowBackup="true"');
fprintf(fid_manifest,'\n\tandroid:icon="@drawable/%s"',icon_name);
fprintf(fid_manifest,'\n\tandroid:label="@string/app_name"');
fprintf(fid_manifest,'\n\tandroid:theme="@style/AppTheme" >');
fprintf(fid_manifest,'\n\t<activity');
fprintf(fid_manifest,'\n\t\tandroid:name=".MainActivity"');        
fprintf(fid_manifest,'\n\t\tandroid:label="@string/app_name" >');
fprintf(fid_manifest,'\n\t\t<intent-filter>');
fprintf(fid_manifest,'\n\t\t\t<action android:name="android.intent.action.MAIN" />');
fprintf(fid_manifest,'\n\t\t\t<category android:name="android.intent.category.LAUNCHER" />');
fprintf(fid_manifest,'\n\t\t</intent-filter>');
fprintf(fid_manifest,'\n\t</activity>');
fprintf(fid_manifest,'\n\t<activity');
fprintf(fid_manifest,'\n\t\tandroid:name=".select_songs_activity"');        
fprintf(fid_manifest,'\n\t\tandroid:label="@string/app_name" >');
fprintf(fid_manifest,'\n\t\t\t<intent-filter>');
fprintf(fid_manifest,'\n\t\t\t\t<action android:name="android.intent.action.CALL" />');
fprintf(fid_manifest,'\n\t\t\t\t<category android:name="android.intent.category.DEFAULT" />');
fprintf(fid_manifest,'\n\t\t\t</intent-filter>');
fprintf(fid_manifest,'\n\t\t</activity>\n');
fprintf(fid_manifest,'\n\t\t<receiver android:name=".AlarmReceiver"></receiver>');
fprintf(fid_manifest,'\n\t\t<receiver android:name=".BootReceiver"');
fprintf(fid_manifest,'\n\t\t android:enabled="false">');    
fprintf(fid_manifest,'\n\t\t\t<intent-filter>');    
fprintf(fid_manifest,'\n\t\t\t\t<action android:name="android.intent.action.BOOT_COMPLETED"></action>');    
fprintf(fid_manifest,'\n\t\t\t</intent-filter>');   
fprintf(fid_manifest,'\n\t\t</receiver>');    
fprintf(fid_manifest,'\n\t\t<service android:name=".SchedulingService" />\n');    
fprintf(fid_manifest,'\n\t</application>\n');
fprintf(fid_manifest,'\n</manifest>');
fprintf(fid_manifest,'\n\t\t');

fclose(fid_manifest);



%%

% %% create animation with subselection of frames (13.Feb15)
% clc;
% durat=150;
% fprintf(1,'<?xml version="1.0" encoding="utf-8"?>');
% 
% fprintf(1,'\n<animation-list xmlns:android="http://schemas.android.com/apk/res/android"\n');
% fprintf(1,'\n\tandroid:oneshot="true">\n');
%     
% for n=1:2:32
%     fprintf(1,'\n\t<item');
%         fprintf(1,'\n\t\tandroid:drawable="@drawable/splsc%d"',n);
%         fprintf(1,'\n\t\tandroid:duration="%d"/>',durat);
% end
% 
% fprintf(1,'\n</animation-list>\n');
% 
% 
% %%
% clc
% fprintf(1,'\nint[] Days = {1'); for n=2:90, fprintf(1,',%d',n); end; fprintf(1,'};\n');
% 

% %%
% clc
% fprintf(1,'\n\tint today = Calendar.getInstance().get(Calendar.DAY_OF_YEAR);');
% fprintf(1,'\n\tif (today==%d){btn%d.setPaintFlags(Paint.UNDERLINE_TEXT_FLAG);',32,1);
% fprintf(1,' btn%d.setTypeface(null, Typeface.BOLD);',1); 
% fprintf(1,' btn%d.setTextColor(Color.RED);}',1);     
% m=33; for n=2:32,
% fprintf(1,'\n\telse if (today==%d) {btn%d.setPaintFlags(Paint.UNDERLINE_TEXT_FLAG);',m,n); 
% fprintf(1,' btn%d.setTypeface(null, Typeface.BOLD);',n); 
% fprintf(1,' btn%d.setTextColor(Color.RED);}',n);     
%     m=m+1;
% end
% 
%       
% %% build the apk
% 
% % cd C:\Users\sc04\Documents\MATLAB\container-plapp\PlayListApp;
% % 
% StoreFile = 'C:\Users\sc04\Documents\Android_proj\notsure.jks';
% storeFile file("C:\Users\sc04\Documents\Android_proj\notsure.jks")
% keyAlias "plapp"
% 
% % gradlew.bat assembleRelease
% 
% 
% 
% 
% 
% MyProject.signing=\\home\\username\\.signing\\myproject
% 
% 
pause(.5);
system('start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe"');
                  



%%
% C:\Users\sc04\AppData\Local\Android\sdk\tools
% %%
% cd C:\Users\sc04\Documents\MATLAB\container-plapp\PlayListApp
% %%
% android update project --target <your build target> --path <path to LunarLander example>
% android update project --target "target 1" --path "C:\Users\sc04\Documents\MATLAB\container-plapp\play-app"
% android update project -p <path>
% android update project -p C:\Users\sc04\Documents\MATLAB\container-plapp\play-app

android update project -p .\appsrc\main -t "android-21"

cd C:\Users\sc04\Documents\MATLAB\container-plapp\PlayListApp

gradlew.bat assembleDebug


