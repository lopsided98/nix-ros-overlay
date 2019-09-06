
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, clang, cmake-modules, roslint, catkin, joint-trajectory-controller, rostest, controller-interface, code-coverage, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "d47ba87e12a9d30e5a21c71a8c4f888dabd30623e53da7c79bf51bbcd2107759";
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
