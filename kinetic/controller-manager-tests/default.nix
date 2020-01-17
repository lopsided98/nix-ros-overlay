
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, rosbash, rosnode, rosservice, rostest }:
buildRosPackage {
  pname = "ros-kinetic-controller-manager-tests";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/controller_manager_tests/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "98db7d491de2f2ffa7d08866f6c276920ff5ce7ed6da6412b46267e24230c60a";
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
