
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, clang, cmake-modules, roslint, catkin, joint-trajectory-controller, rostest, controller-interface, code-coverage, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-control";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_control/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "73ea560e0b8ca264acac0c1c308557b0cbe3ae06a52306de86c5e48d677e3808";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager std-srvs clang cmake-modules roslint joint-trajectory-controller controller-interface roscpp ];
  checkInputs = [ rostest code-coverage ];
  propagatedBuildInputs = [ controller-manager std-srvs joint-trajectory-controller controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
