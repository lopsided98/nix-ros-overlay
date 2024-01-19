
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-mechanism-msgs, pr2-tuck-arms-action, roslaunch, rospy, rostest, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-tuckarm";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_tuckarm/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "38a87639aa3c05048409ab86f6f0d4f9d5ad001ce0cc6a106bd18a7ad640021d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ pr2-mechanism-msgs pr2-tuck-arms-action rospy trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tucks the arms of the PR2 robot into a safe position for moving the base of the robot.
     This also moves the arms out of the view of the tilting laser scanner, as much as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
