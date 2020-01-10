
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geometry-msgs, message-filters, nav-msgs, rosconsole, roscpp, rospy, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fake-localization";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/fake_localization/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "e79dfa9f2876265330393e6144f8277b985138c7f8e992baf0f5f79ed5fa93b7";
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
