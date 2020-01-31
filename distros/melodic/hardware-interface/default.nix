
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-hardware-interface";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/hardware_interface/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "ad57d9e12500a21d1f4d3d9a63ab59c194de366b227d052e095cc50eb4fa190e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware Interface base class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
