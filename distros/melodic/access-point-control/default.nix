
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, rospy }:
buildRosPackage {
  pname = "ros-melodic-access-point-control";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/access_point_control/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "17dff1b9389eb82ad17d285128dd8039c26ecf8d914810ada5dd86ec99d25a42";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure rospy ];
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
