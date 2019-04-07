
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-geometry, jsk-tools, pcl-ros, tf-conversions, tf, geometry-msgs, pythonPackages, jsk-topic-tools, message-generation, message-runtime, pcl-msgs, eigen-conversions, catkin, tf2-ros, jsk-recognition-msgs, std-msgs, visualization-msgs, libyamlcpp, sensor-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition-utils";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_utils/1.2.9-0.tar.gz;
    sha256 = "7ec6f134c0afe52f0008c000374cb106cbcb238bc70246430e72e3fd0200b013";
  };

  buildInputs = [ pythonPackages.cython tf libyamlcpp sensor-msgs jsk-topic-tools pcl-msgs eigen-conversions image-geometry tf2-ros message-generation tf-conversions jsk-recognition-msgs pcl-ros std-msgs dynamic-reconfigure visualization-msgs geometry-msgs ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ tf libyamlcpp sensor-msgs jsk-topic-tools pcl-msgs eigen-conversions image-geometry tf2-ros pythonPackages.chainer message-runtime jsk-recognition-msgs pcl-ros std-msgs tf-conversions pythonPackages.scikitimage visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    #license = lib.licenses.BSD;
  };
}
