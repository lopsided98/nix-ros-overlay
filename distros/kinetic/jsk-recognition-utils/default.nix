
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, libyamlcpp, message-generation, message-runtime, pcl-msgs, pcl-ros, pythonPackages, sensor-msgs, std-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition-utils";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_utils/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "7ec6f134c0afe52f0008c000374cb106cbcb238bc70246430e72e3fd0200b013";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure message-generation pythonPackages.cython ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs image-geometry jsk-recognition-msgs jsk-topic-tools libyamlcpp message-runtime pcl-msgs pcl-ros pythonPackages.chainer pythonPackages.scikitimage sensor-msgs std-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
