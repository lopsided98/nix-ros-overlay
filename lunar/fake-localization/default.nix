
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf, catkin, message-filters, nav-msgs, angles, rospy, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-fake-localization";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/fake_localization/1.15.2-0.tar.gz;
    sha256 = "5df350cd05f0dfaa73bb6371e89773ba71282fd8a2444e43b8f1f31d5c829da4";
  };

  buildInputs = [ rosconsole message-filters roscpp nav-msgs angles rospy tf geometry-msgs ];
  propagatedBuildInputs = [ rosconsole message-filters roscpp nav-msgs rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that simply forwards odometry information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
