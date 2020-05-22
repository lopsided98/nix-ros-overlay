
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, controller-interface, controller-manager, joint-trajectory-controller, pilz-utils, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.16-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.16-1.tar.gz";
    name = "0.5.16-1.tar.gz";
    sha256 = "d1f3fd4be9ebdb6a5fbc8c74391a942283c3a9013f3d2116f27f170187ab92fe";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules roslint ];
  checkInputs = [ code-coverage rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller pilz-utils roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
