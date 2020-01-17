
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-hardware-interface";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/hardware_interface/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "575a20e649c9b44fbad6362ed6f2acb2810a738b778ff520ba70c8e67e70bd1b";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware Interface base class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
