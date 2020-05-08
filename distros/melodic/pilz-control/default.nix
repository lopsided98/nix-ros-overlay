
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, controller-interface, controller-manager, joint-trajectory-controller, pilz-utils, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.15-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.15-1.tar.gz";
    name = "0.5.15-1.tar.gz";
    sha256 = "f399607f785b4ff741cc69b474af2a6c08d41c6f68abedf4cb3f53af98bf8030";
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
