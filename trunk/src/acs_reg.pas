unit acs_reg;

(* Title: ACS_Reg 
    Registers all ACS components. *)

interface

uses
  Classes, ACS_Audio, ACS_DXAudio,
  ACS_CDROM, ACS_AudioMix, ACS_Converters,
  ACS_Misc, ACS_Vorbis, ACS_Wave, ACS_Filters, ACS_LAME, ACS_smpeg, ACS_MAC, ACS_Streams, ACS_FLAC, AuSampleRate, ACS_WavPack, ACS_WinMedia, ACS_TTA;

  procedure Register();

implementation

procedure Register();
begin
  RegisterComponents('Audio I/O', [TAudioIn, TAudioOut, TDXAudioIn, TDXAudioOut,
  TCDPlayer, TCDIn,
  TInputList, TMemoryIn, TVorbisIn, TVorbisOut,
  TWaveIn, TWaveOut, TMP3In, TMP3Out, TMACIn, TMACOut, TStreamIn, TStreamOut, TFLACIn, TFLACOut, TWVIn, TWVOut, TWMIn, TWMAOut, TTTAIn, TTTAOut, TNULLOut]);
  RegisterComponents('Audio Processing', [TAudioMixer, TAudioConverter, TACMConverter,
  TRateConverter, TMSConverter, TAudioProcessor, TBWFilter, TSincFilter, TStereoBalance, TConvolver, TResampler]);

end;


end.