
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, catkin, pr2-machine, pr2-dashboard-aggregator, pr2-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-common";
  version = "1.12.4-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/pr2_common/1.12.4-1.tar.gz;
    sha256 = "1ca98fc773b0137159bc5d61d394920e40def8cd1f58c922ff668022de2ed649";
  };

  propagatedBuildInputs = [ pr2-machine pr2-dashboard-aggregator pr2-msgs pr2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the robot kinematics and dynamics, 3D models of robot components, information required for gazebo to simulate the PR2, and messages specific to the PR2 such as detailed information about its power board and fingertip pressure sensors.'';
    #license = lib.licenses.BSD;
  };
}
