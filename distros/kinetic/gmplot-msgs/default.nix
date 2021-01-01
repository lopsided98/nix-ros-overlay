
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-gmplot-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/robustify/gmplot_ros-release/archive/release/kinetic/gmplot_msgs/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "a365d3bd44fc2c3e17451240a917973db2813dc8b355d629a7506bf8b39ee774";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for gmplot ROS wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
