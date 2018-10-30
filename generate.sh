CONFIG="performance_with_dynamics"

performance_rnn_generate \
--run_dir=output/performance_rnn/logdir/run1 \
--output_dir=output/performance_rnn/generated \
--config=${CONFIG} \
--num_outputs=10 \
--num_steps=3000 \
--primer_midi="afx/wl.mid"
