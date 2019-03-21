
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf2-geometry-msgs, catkin, message-filters, tf2-ros, nav-msgs, rospy, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fake-localization";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/fake_localization/1.16.2-0.tar.gz;
    sha256 = "d18ea7beb5f10b7eb2ea3d1578f8ae3b2d4db9f314ac25ed8d130a90cec74450";
  };

  propagatedBuildInputs = [ nav-msgs rosconsole tf2-ros rospy roscpp message-filters geometry-msgs ];
  nativeBuildInputs = [ rosconsole tf2-geometry-msgs catkin message-filters tf2-ros nav-msgs angles rospy roscpp geometry-msgs ];

  meta = {
    description = ''A ROS node that simply forwards odometry information.'';
    #license = lib.licenses.BSD;
  };
}
