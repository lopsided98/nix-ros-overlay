
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-controller-interface";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_interface/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "8ad2619c87e4e83f16e4ff0e376e450bda0605cb9afed694e39b9401a4b115f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
