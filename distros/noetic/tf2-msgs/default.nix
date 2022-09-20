
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-noetic-tf2-msgs";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_msgs/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "0f9a5e3e7ca0b185d188b283b73742310b125d1d944a20adc7330156e86dc149";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
