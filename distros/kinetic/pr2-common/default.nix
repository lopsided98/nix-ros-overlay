
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-dashboard-aggregator, pr2-description, pr2-machine, pr2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-common";
  version = "1.12.4-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/pr2_common/1.12.4-1.tar.gz";
    name = "1.12.4-1.tar.gz";
    sha256 = "9225508e8db9e13f977eddd37b41fc776408298b5c04c18037a8621f55efa50a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-dashboard-aggregator pr2-description pr2-machine pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the robot kinematics and dynamics, 3D models of robot components, information required for gazebo to simulate the PR2, and messages specific to the PR2 such as detailed information about its power board and fingertip pressure sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
