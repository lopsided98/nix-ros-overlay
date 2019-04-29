
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, cmake-modules, roslint, catkin, joint-trajectory-controller, rostest, controller-interface, code-coverage, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.3-1.tar.gz;
    sha256 = "4ab1a3cf20ab9a31e256bc2e750d7040b10038afe80715e149921a4c7efb56e6";
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
