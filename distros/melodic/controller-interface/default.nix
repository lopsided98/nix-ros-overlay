
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-controller-interface";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_interface/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "21d6bf1b95666c974dadc6702dfdb451f6896b92a6e19ae34a15c75af233fdaf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
