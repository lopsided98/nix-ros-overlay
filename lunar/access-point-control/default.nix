
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-access-point-control";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/access_point_control/1.0.15-0.tar.gz;
    sha256 = "a1a7271db3ed72b7b43ea76ea03ad07661206602a06128a22e35fb9db97f8bd0";
  };

  buildInputs = [ rospy dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines an API for access point control based on 
    dynamic_reconfigure. Other packages must
    implement the API for various access-point models: 
    for example: hostapd_access_point for hostapd-based control or
    linksys_access_point for Linksys router web interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
