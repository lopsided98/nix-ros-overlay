
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, catkin, pr2-machine, pr2-dashboard-aggregator, pr2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-common";
  version = "1.12.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_common/1.12.2-0.tar.gz;
    sha256 = "0b7aa8301ba1e9cf047c3296bc545740dcbd24e1b4fa326f7c3b5a2bd7da5832";
  };

  propagatedBuildInputs = [ pr2-machine pr2-dashboard-aggregator pr2-msgs pr2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the robot kinematics and dynamics, 3D models of robot components, information required for gazebo to simulate the PR2, and messages specific to the PR2 such as detailed information about its power board and fingertip pressure sensors.'';
    #license = lib.licenses.BSD;
  };
}
