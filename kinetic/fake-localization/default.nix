
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, geometry-msgs, catkin, tf2-geometry-msgs, roscpp, angles, rospy, nav-msgs, rosconsole, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-fake-localization";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/fake_localization/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "5285fddec54294a69954d90e5ec8f716c26eed2b6cb8f573e0bcda7bfd4b4e40";
  };

  buildType = "catkin";
  buildInputs = [ message-filters geometry-msgs tf2-geometry-msgs roscpp angles rospy nav-msgs rosconsole tf2-ros ];
  propagatedBuildInputs = [ message-filters geometry-msgs roscpp rospy nav-msgs rosconsole tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that simply forwards odometry information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
