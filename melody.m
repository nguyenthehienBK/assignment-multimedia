r = audiorecorder(44100, 16, 1);
disp('Start speaking.');
recordblocking(r, 10);
disp('End of Recording.');
y = getaudiodata(r);
audiowrite('/home/hien/Da_Phuong_Tien/orig_input.wav', y, 44100);
[x, fs_x] = audioread('/home/hien/Da_Phuong_Tien/into.wav');
y(1:2:length(y)) = x(1:2:length(x));
audiowrite('/home/hien/Da_Phuong_Tien/melody.wav', y, 44100);
