
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, dynamic-reconfigure, ieee80211-channels, rospy }:
buildRosPackage {
  pname = "ros-kinetic-linksys-access-point";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/linksys_access_point/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "4ec4e1aa63b3b62fc96a3ad414acbb1849d2da8f61bab21c4d950de89ad50dd0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ access-point-control dynamic-reconfigure ieee80211-channels rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys access point with
    a Linksys WRT610n-compatible web interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
