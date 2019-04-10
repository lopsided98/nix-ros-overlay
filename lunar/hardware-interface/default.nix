
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-lunar-hardware-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/hardware_interface/0.13.3-0.tar.gz;
    sha256 = "20e36cce39f801e19025e4b42bbfa54e464dbb41a7adb13a509df3b3e13a5100";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware Interface base class.'';
    #license = lib.licenses.BSD;
  };
}
