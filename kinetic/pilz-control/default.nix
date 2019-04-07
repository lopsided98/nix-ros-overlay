
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, cmake-modules, roslint, catkin, joint-trajectory-controller, rostest, controller-interface, code-coverage, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-control";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_control/0.4.7-0.tar.gz;
    sha256 = "18ca5d1b6386bc04b8fb746b0bf41e71f13b9afe01997abb5eac0de347901858";
  };

  buildInputs = [ controller-manager std-srvs controller-interface cmake-modules roslint roscpp joint-trajectory-controller ];
  checkInputs = [ rostest code-coverage ];
  propagatedBuildInputs = [ controller-manager std-srvs controller-interface roscpp joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    #license = lib.licenses.Apache 2.0;
  };
}
