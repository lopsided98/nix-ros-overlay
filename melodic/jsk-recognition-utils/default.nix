
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, tf, sensor-msgs, dynamic-reconfigure, libyamlcpp, qt5, jsk-tools, tf2-ros, pcl-ros, jsk-topic-tools, std-msgs, jsk-recognition-msgs, catkin, pythonPackages, message-generation, image-geometry, pcl-msgs, visualization-msgs, message-runtime, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition-utils";
  version = "1.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition_utils/1.2.10-0.tar.gz";
    name = "1.2.10-0.tar.gz";
    sha256 = "942d735c8f41e66b1417c0dea17f7e5e511a0b47154341c5f0c45359b89de95c";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros jsk-topic-tools sensor-msgs geometry-msgs dynamic-reconfigure eigen-conversions std-msgs tf pcl-msgs jsk-recognition-msgs qt5.qtbase libyamlcpp visualization-msgs pythonPackages.cython message-generation tf-conversions tf2-ros image-geometry ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ pcl-ros jsk-topic-tools sensor-msgs geometry-msgs eigen-conversions std-msgs tf pcl-msgs jsk-recognition-msgs pythonPackages.scikitimage libyamlcpp pythonPackages.chainer visualization-msgs message-runtime tf-conversions tf2-ros image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
