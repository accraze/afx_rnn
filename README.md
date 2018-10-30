# AFX RNN

Training a Neural Network to compose it's own Aphex Twin score using Magenta/Tensorflow.

Blogpost: https://accraze.info/deep-learning-aphex-twin/

## Useage
First make sure you have installed [Magenta](https://github.com/tensorflow/magenta)

To train the model use:

```
$ ./train.sh
```
This will create the `NoteSequences` and `SequenceExamples` that will be fed into
the PerformanceRNN model during training and evaluation.

To generate midi files:

```
$ ./generate.sh
```

This will place 10 new files in the output directory.
