
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-controller-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/controller_interface/0.13.3-0.tar.gz;
    sha256 = "98ae69f8349914041d50f8c0d8cb0ca26da9095e334ebf8b82d2d650699fb66f";
  };

  buildInputs = [ hardware-interface roscpp pluginlib ];
  propagatedBuildInputs = [ hardware-interface roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers'';
    #license = lib.licenses.BSD;
  };
}
