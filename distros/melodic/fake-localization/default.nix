
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geometry-msgs, message-filters, nav-msgs, rosconsole, roscpp, rospy, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fake-localization";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/fake_localization/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "1679a2887da35c86356729c40c4a9d5e138468d0b4a4adb2f683b6b0bd4cc9f2";
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
