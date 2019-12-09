
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, ieee80211-channels, catkin, rospy, access-point-control }:
buildRosPackage {
  pname = "ros-melodic-linksys-access-point";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/linksys_access_point/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "d9072a9e264d9aaf55aaaf24e4f0a40032a5d836770cd6541ae7da0f9745982e";
  };

  buildType = "catkin";
  buildInputs = [ rospy access-point-control ieee80211-channels dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy access-point-control ieee80211-channels dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys access point with
    a Linksys WRT610n-compatible web interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
