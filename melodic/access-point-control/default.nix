
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-access-point-control";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/access_point_control/1.0.15-0.tar.gz;
    sha256 = "bd928fbd2ace49080fc8c8691939402be907acdf7a84259735f03e7278e5afe5";
  };

  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ rospy catkin dynamic-reconfigure ];

  meta = {
    description = ''Defines an API for access point control based on 
    dynamic_reconfigure. Other packages must
    implement the API for various access-point models: 
    for example: hostapd_access_point for hostapd-based control or
    linksys_access_point for Linksys router web interface.'';
    #license = lib.licenses.BSD;
  };
}
