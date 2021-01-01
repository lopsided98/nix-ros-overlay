
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, rosbash, rosnode, rosservice, rostest }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager-tests";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager_tests/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "15b9230f00066024310438a7438ada24ecc30dd952323f5ea4f43d31ea3c494b";
  };

  buildType = "catkin";
  checkInputs = [ rosbash rosnode rosservice rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''controller_manager_tests'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
