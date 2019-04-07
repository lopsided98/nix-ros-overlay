
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, yocs-math-toolkit, yocs-msgs, move-base-msgs, nav-msgs, actionlib, rospy, roscpp }:
buildRosPackage {
  pname = "ros-melodic-yocs-navigator";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_navigator/0.8.2-0.tar.gz;
    sha256 = "ce9cacbbb9e4456865e0c8591d0dc48d821e1823a97127deb9963bb6f3a5a75a";
  };

  buildInputs = [ move-base-msgs nav-msgs actionlib rospy tf roscpp yocs-math-toolkit yocs-msgs ];
  propagatedBuildInputs = [ move-base-msgs nav-msgs actionlib rospy tf roscpp yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation module for robots'';
    #license = lib.licenses.BSD;
  };
}
