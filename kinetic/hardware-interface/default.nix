
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-hardware-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/hardware_interface/0.13.3-0.tar.gz;
    sha256 = "87d812bfa3d2a03df47ff2cb240d6b8cfeb66511d622dd71453a76185e1b5641";
  };

  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin roscpp ];

  meta = {
    description = ''Hardware Interface base class.'';
    #license = lib.licenses.BSD;
  };
}
