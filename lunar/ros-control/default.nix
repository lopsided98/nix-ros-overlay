
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, realtime-tools, joint-limits-interface, combined-robot-hw-tests, catkin, controller-interface, controller-manager-msgs, combined-robot-hw, controller-manager-tests, transmission-interface }:
buildRosPackage {
  pname = "ros-lunar-ros-control";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/ros_control/0.13.3-0.tar.gz;
    sha256 = "9d333e02aac5ca7b201aee56e0d050ed52c7a5cfb1ca8261a5a18fbacb1286df";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface realtime-tools joint-limits-interface combined-robot-hw-tests controller-interface controller-manager-msgs combined-robot-hw controller-manager-tests transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    #license = lib.licenses.BSD;
  };
}
