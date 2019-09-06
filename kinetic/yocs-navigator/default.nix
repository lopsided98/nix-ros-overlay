
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-math-toolkit, yocs-msgs, roscpp, move-base-msgs, nav-msgs, actionlib, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-yocs-navigator";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_navigator/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "e3c66d8660e994e80ffab16538af3a9edffe2dc92c27b2510417a74e5537e208";
  };

  buildType = "catkin";
  buildInputs = [ tf yocs-math-toolkit yocs-msgs move-base-msgs nav-msgs actionlib rospy roscpp ];
  propagatedBuildInputs = [ tf yocs-math-toolkit yocs-msgs move-base-msgs nav-msgs actionlib rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation module for robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
