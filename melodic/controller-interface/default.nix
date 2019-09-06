
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-controller-interface";
  version = "0.15.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_interface/0.15.1-0.tar.gz";
    name = "0.15.1-0.tar.gz";
    sha256 = "6b4025c033f2785cdbf9c8246c7699e597de302f0651fd94e64d3b7746786350";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface roscpp pluginlib ];
  propagatedBuildInputs = [ hardware-interface roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
