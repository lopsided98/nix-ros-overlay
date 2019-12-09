
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, tf, sensor-msgs, dynamic-reconfigure, libyamlcpp, jsk-tools, tf2-ros, pcl-ros, jsk-topic-tools, std-msgs, jsk-recognition-msgs, catkin, pythonPackages, message-generation, image-geometry, pcl-msgs, visualization-msgs, message-runtime, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition-utils";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_utils/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "7ec6f134c0afe52f0008c000374cb106cbcb238bc70246430e72e3fd0200b013";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros jsk-topic-tools sensor-msgs geometry-msgs dynamic-reconfigure eigen-conversions std-msgs tf pcl-msgs jsk-recognition-msgs libyamlcpp visualization-msgs pythonPackages.cython message-generation tf-conversions tf2-ros image-geometry ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ pcl-ros jsk-topic-tools sensor-msgs geometry-msgs eigen-conversions std-msgs tf pcl-msgs jsk-recognition-msgs pythonPackages.scikitimage libyamlcpp pythonPackages.chainer visualization-msgs message-runtime tf-conversions tf2-ros image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
