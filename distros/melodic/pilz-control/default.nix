
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, controller-interface, controller-manager, geometry-msgs, joint-trajectory-controller, moveit-core, moveit-ros-planning, pilz-msgs, pilz-testutils, pilz-utils, roscpp, roslint, rostest, rosunit, std-srvs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.23-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.23-1.tar.gz";
    name = "0.5.23-1.tar.gz";
    sha256 = "f686fe3565c832940c04e14e35771028368963b4a88857ebeefc524b6d7f1b09";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules roslint ];
  checkInputs = [ code-coverage geometry-msgs pilz-testutils pilz-utils rostest rosunit tf2 tf2-geometry-msgs ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller moveit-core moveit-ros-planning pilz-msgs roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
