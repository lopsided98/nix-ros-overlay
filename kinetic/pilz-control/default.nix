
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, controller-manager, code-coverage, std-srvs, cmake-modules, catkin, roslint, roscpp, joint-trajectory-controller, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pilz-control";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_control/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "87476526bca7357a5b2984e70ca33e12106520f736329c348def4d3e54f47f52";
  };

  buildType = "catkin";
  buildInputs = [ controller-interface controller-manager std-srvs cmake-modules roslint roscpp joint-trajectory-controller ];
  checkInputs = [ code-coverage rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager std-srvs roscpp joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
