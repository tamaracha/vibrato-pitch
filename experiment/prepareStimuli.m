function stimuli = prepareStimuli()
  stimuli = { ...
  "low", 0; ...
  "low", 0.25; ...
  "high", 0.25; ...
  "low", 0.5; ...
  "high", 0.5; ...
  "low", 0.75; ...
  "high", 0.75; ...
  };
  stimuli = repmat(stimuli, 4, 1);
  stimuli = dataframe(stimuli, "colnames", { "peak", "stable_rel" });
  stimuli = stimuli(randperm(stimuli.rowcnt),:);
  stimuli.pitch_Hz = NA;
  stimuli.amplitude_sinus = NA;
  stimuli.amplitude_vibrato = NA;
end