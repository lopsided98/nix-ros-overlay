
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, controller-interface, controller-manager, geometry-msgs, joint-trajectory-controller, moveit-core, moveit-ros-planning, pilz-msgs, pilz-testutils, pilz-utils, roscpp, roslint, rostest, rosunit, std-srvs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-control";
  version = "0.5.21-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_control/0.5.21-1.tar.gz";
    name = "0.5.21-1.tar.gz";
    sha256 = "acfb911d647d5da6c87d8978a750cacb69d5a8c8a254a79d5da4c7874c9603af";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules roslint ];
  checkInputs = [ code-coverage geometry-msgs pilz-testutils pilz-utils rostest rosunit tf2 tf2-geometry-msgs ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller moveit-core moveit-ros-planning pilz-msgs roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a specialized joint_trajectory_controller that can be moved into holding state via service call.
  No further trajectories will be accepted/followed in this state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
