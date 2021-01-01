
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-hardware-interface";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/hardware_interface/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "9b33ac5a19c6f1a926e39922bd4ffadbc9ed1d49ec54390a6df9198569c7becb";
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
