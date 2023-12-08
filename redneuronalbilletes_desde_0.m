digitDatasetPath = 'C:/Users/pipet/OneDrive/Documentos/inteligencia artificial/data sets billetes nuevos/train';
train = imageDatastore(digitDatasetPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

digitDatasetPath = 'C:/Users/pipet/OneDrive/Documentos/inteligencia artificial/data sets billetes nuevos/validacion';
validacion = imageDatastore(digitDatasetPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

layers = [
    imageInputLayer([150 150 3])
    convolution2dLayer(9, 32, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)
    convolution2dLayer(9, 64, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)
    convolution2dLayer(6, 128, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)

    convolution2dLayer(6, 256, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer

    maxPooling2dLayer(2, 'Stride', 2)
    convolution2dLayer(6, 512, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer

    fullyConnectedLayer(2)
    softmaxLayer
    classificationLayer
];

options = trainingOptions('sgdm', ...
    'InitialLearnRate', 0.001, ...
    'MaxEpochs', 20, ...
    'Shuffle', 'every-epoch', ...
    'ValidationData', validacion, ...
    'ValidationFrequency', 30, ...
    'Verbose', false, ...
    'Plots', 'training-progress');

net = trainNetwork(train, layers, options);



rutaImagen = 'C:/Users/pipet/OneDrive/Imágenes/Saved Pictures/IMG-20230626-WA0039.jpg';

imagen = imread(rutaImagen);
imagenNueva = imresize(imagen, inputSize(1:2));

resultado = net.predict(imagenNueva)



