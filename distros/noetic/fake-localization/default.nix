
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geometry-msgs, message-filters, nav-msgs, rosconsole, roscpp, rospy, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fake-localization";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/fake_localization/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "5b385408855c4d724fd7f63b76bea87f4f792a1e87814c175bd305556e1db6fd";
  };

  buildType = "catkin";
  buildInputs = [ angles tf2-geometry-msgs ];
  propagatedBuildInputs = [ geometry-msgs message-filters nav-msgs rosconsole roscpp rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that simply forwards odometry information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
