
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-controller-interface";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_interface/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "30eba6cf7866a83292b67ea5b82f21b62a428de5577078b278474063ea3f3739";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
