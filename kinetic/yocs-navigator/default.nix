
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yocs-math-toolkit, tf, actionlib, catkin, roscpp, yocs-msgs, rospy, nav-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-navigator";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_navigator/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "e3c66d8660e994e80ffab16538af3a9edffe2dc92c27b2510417a74e5537e208";
  };

  buildType = "catkin";
  buildInputs = [ yocs-math-toolkit actionlib tf roscpp yocs-msgs rospy nav-msgs move-base-msgs ];
  propagatedBuildInputs = [ yocs-math-toolkit actionlib tf roscpp yocs-msgs rospy nav-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation module for robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
