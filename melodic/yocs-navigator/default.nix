
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-math-toolkit, yocs-msgs, roscpp, move-base-msgs, nav-msgs, actionlib, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-yocs-navigator";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_navigator/0.8.2-0.tar.gz;
    sha256 = "ce9cacbbb9e4456865e0c8591d0dc48d821e1823a97127deb9963bb6f3a5a75a";
  };

  buildInputs = [ tf yocs-math-toolkit yocs-msgs move-base-msgs nav-msgs actionlib rospy roscpp ];
  propagatedBuildInputs = [ tf yocs-math-toolkit yocs-msgs move-base-msgs nav-msgs actionlib rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation module for robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
