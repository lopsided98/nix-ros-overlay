
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, ieee80211-channels, rospy, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-linksys-access-point";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/linksys_access_point/1.0.15-0.tar.gz;
    sha256 = "55dd46632ddd7f101ab243a61ebdba3479af1187d7ea143d4b8cd419aed58592";
  };

  buildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys access point with
    a Linksys WRT610n-compatible web interface.'';
    #license = lib.licenses.BSD;
  };
}
