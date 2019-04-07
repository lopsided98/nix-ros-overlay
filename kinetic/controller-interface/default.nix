
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-controller-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_interface/0.13.3-0.tar.gz;
    sha256 = "5db8ab2db8d3bdfbaa79743ec62a1932d3763d016812652cc145b674cb58ea8c";
  };

  buildInputs = [ hardware-interface roscpp pluginlib ];
  propagatedBuildInputs = [ hardware-interface roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers'';
    #license = lib.licenses.BSD;
  };
}
