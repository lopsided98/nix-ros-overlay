
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, controller-manager, rosnode, catkin, rosbash, rosservice, rostest }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-tests";
  version = "0.15.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_tests/0.15.1-0.tar.gz";
    name = "0.15.1-0.tar.gz";
    sha256 = "b43edda9914e25875e06aaace29bf7c78afc68d0cc59da2b77dc7e5783a7b4af";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface controller-manager ];
  checkInputs = [ rosbash rosnode rosservice rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''controller_manager_tests'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
