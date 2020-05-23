
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geometry-msgs, message-filters, nav-msgs, rosconsole, roscpp, rospy, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fake-localization";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/fake_localization/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "eddcef07d62b56694b7a5b202f0670020887df212fbf9cb763bd2e664e270b60";
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
