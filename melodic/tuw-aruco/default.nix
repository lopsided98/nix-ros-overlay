
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, std-msgs, tf, catkin, marker-msgs, image-transport, cv-bridge, roscpp, rospy, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-tuw-aruco";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/melodic/tuw_aruco/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "98fd74948391d0642bc7d6c8f4b679bdbe748da0b17856ddcb782c1e797fbf1a";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure std-msgs tf marker-msgs image-transport cv-bridge roscpp rospy image-geometry ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs tf marker-msgs image-transport cv-bridge roscpp rospy image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a wrapper around the marker detection library ArUco.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
