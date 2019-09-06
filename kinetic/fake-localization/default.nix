
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf2-geometry-msgs, catkin, message-filters, tf2-ros, nav-msgs, angles, rospy, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fake-localization";
  version = "1.14.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/fake_localization/1.14.4-0.tar.gz";
    name = "1.14.4-0.tar.gz";
    sha256 = "232105963bddfd8f630800213dd0686ea1ea2758dd04df747cdffc46af148d40";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole tf2-geometry-msgs message-filters tf2-ros nav-msgs angles rospy roscpp geometry-msgs ];
  propagatedBuildInputs = [ rosconsole message-filters tf2-ros nav-msgs rospy roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that simply forwards odometry information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
