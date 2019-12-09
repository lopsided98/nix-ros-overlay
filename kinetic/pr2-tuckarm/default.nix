
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, catkin, pr2-tuck-arms-action, rospy, pr2-mechanism-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-tuckarm";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_tuckarm/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "5e4a04899cb1f09027c550b29a79882d85e7dc2b1736ff2320dce118a201b399";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-msgs rospy pr2-tuck-arms-action pr2-mechanism-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tucks the arms of the PR2 robot into a safe position for moving the base of the robot.
     This also moves the arms out of the view of the tilting laser scanner, as much as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
