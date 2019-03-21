
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, forward-command-controller, controller-interface }:
buildRosPackage {
  pname = "ros-melodic-position-controllers";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/position_controllers/0.14.3-0.tar.gz;
    sha256 = "91aa18fc5a7c90ec7af738804d0025c85b3961bcefceba3bec52751fb16c7f1d";
  };

  propagatedBuildInputs = [ forward-command-controller controller-interface ];
  nativeBuildInputs = [ forward-command-controller catkin controller-interface ];

  meta = {
    description = ''position_controllers'';
    #license = lib.licenses.BSD;
  };
}
