
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-msgs";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_msgs/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "91598f441de74a6fd68a6cc605dd39ea81779e4fef13f59ef6fb0c4782e5b415";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = ''RTAB-Map's msgs package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
