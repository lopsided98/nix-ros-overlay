
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-melodic-hardware-interface";
  version = "0.15.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/melodic/hardware_interface/0.15.1-0.tar.gz;
    sha256 = "32cf3ab34458a850b34cf14066562015d475f2c2e6edd49b16725c7f86e218c9";
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
