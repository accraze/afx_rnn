INPUT_DIRECTORY=afx/

# TFRecord file that will contain NoteSequence protocol buffers.
SEQUENCES_TFRECORD=output/notesequences.tfrecord

convert_dir_to_note_sequences \
  --input_dir=$INPUT_DIRECTORY \
  --output_file=$SEQUENCES_TFRECORD \
  --recursive

CONFIG="performance_with_dynamics"

performance_rnn_create_dataset \
--config=${CONFIG} \
--input=output/notesequences.tfrecord \
--output_dir=output/performance_rnn/sequence_examples \
--eval_ratio=0.10

performance_rnn_train \
--config=${CONFIG} \
--run_dir=output/performance_rnn/logdir/run1 \
--sequence_example_file=output/performance_rnn/sequence_examples/training_performances.tfrecord
