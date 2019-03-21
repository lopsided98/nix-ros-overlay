
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openface-ros, image-recognition-rqt, catkin, tensorflow-ros-rqt, tensorflow-ros, image-recognition-util, image-recognition-msgs, skybiometry-ros }:
buildRosPackage {
  pname = "ros-kinetic-image-recognition";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/image_recognition/0.0.4-0.tar.gz;
    sha256 = "62653fdb62c43a51759a9a20f8541b07682cacd08693a6dd5bf50efc92a239de";
  };

  propagatedBuildInputs = [ openface-ros tensorflow-ros image-recognition-util image-recognition-msgs skybiometry-ros image-recognition-rqt tensorflow-ros-rqt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The image_recognition package'';
    #license = lib.licenses.TODO;
  };
}
