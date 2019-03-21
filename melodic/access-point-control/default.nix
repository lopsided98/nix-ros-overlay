
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-access-point-control";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/access_point_control/1.0.13-2.tar.gz;
    sha256 = "39437c7678dd643ca15a57d31c319e44d806e652a955b8f040cda6239366e000";
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
