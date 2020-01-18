
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-controller-interface";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_interface/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "f18d88901d6e04e1001f85041f93aaafb8f3b569a1b666b060bb37753b15f7a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
