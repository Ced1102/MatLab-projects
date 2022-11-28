
function tone = note(key,dur)
fs = 44100;
t = 0:(1/fs):dur;
freq = 440*2^((key-49)/12);
wave = sin(1*2*pi*freq*t).*exp(-0.0004*2*pi*freq*t)/1;
wave = wave+sin(2*2*pi*freq*t).*exp(-0.0004*2*pi*freq*t)/2;
wave = wave+sin(3*2*pi*freq*t).*exp(-0.0004*2*pi*freq*t)/4;
wave = wave+sin(4*2*pi*freq*t).*exp(-0.0004*2*pi*freq*t)/8;
wave = wave+sin(5*2*pi*freq*t).*exp(-0.0004*2*pi*freq*t)/16;
wave = wave+sin(6*2*pi*freq*t).*exp(-0.0004*2*pi*freq*t)/32;
wave = wave+(wave.*wave.*wave);
wave=wave/6;
    if (2.9<dur && dur<4.1)
        tone = wave.*((exp(-0.5*t)));
    elseif (1.9<dur && dur<3)
        tone = wave.*((exp(-0.8*t)));
    elseif (0.9<dur && dur<2)
        tone = wave.*((exp(-1.8*t)));
     elseif (0<dur && dur<1)
        tone = wave.*((exp(-5*t)));  
    end
end
