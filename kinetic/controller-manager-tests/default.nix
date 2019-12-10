
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, rosbash, rosnode, rosservice, rostest }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager-tests";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager_tests/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "2c53a56ac8a4397ae21b4a814691fe728d011d25d76e5386b840f3bc5bf8de29";
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
