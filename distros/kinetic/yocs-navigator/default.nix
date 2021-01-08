
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, move-base-msgs, nav-msgs, roscpp, rospy, tf, yocs-math-toolkit, yocs-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-navigator";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_navigator/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "e3c66d8660e994e80ffab16538af3a9edffe2dc92c27b2510417a74e5537e208";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib move-base-msgs nav-msgs roscpp rospy tf yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation module for robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
