
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, trajectory-msgs, catkin, rospy, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-tuckarm";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_tuckarm/0.6.1-0.tar.gz;
    sha256 = "b03495a901d77fa4ed63ddd47ac3d1000dd43d7458eceeb5910f4c989397ee30";
  };

  propagatedBuildInputs = [ pr2-mechanism-msgs pr2-tuck-arms-action trajectory-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tucks the arms of the PR2 robot into a safe position for moving the base of the robot.
     This also moves the arms out of the view of the tilting laser scanner, as much as possible.'';
    #license = lib.licenses.BSD;
  };
}
