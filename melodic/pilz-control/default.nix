
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, cmake-modules, roslint, catkin, joint-trajectory-controller, rostest, controller-interface, code-coverage, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.2-0.tar.gz;
    sha256 = "938f095c4b12fe6424a6adb2b205a200c867185f2f492522289a0deb40c87f2c";
  };

  checkInputs = [ rostest code-coverage ];
  propagatedBuildInputs = [ controller-manager std-srvs controller-interface roscpp joint-trajectory-controller ];
  nativeBuildInputs = [ controller-manager std-srvs controller-interface cmake-modules roslint catkin roscpp joint-trajectory-controller ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    #license = lib.licenses.Apache 2.0;
  };
}
