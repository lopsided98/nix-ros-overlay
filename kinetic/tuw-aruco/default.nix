
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, std-msgs, tf, catkin, marker-msgs, image-transport, cv-bridge, roscpp, rospy, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-tuw-aruco";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_aruco/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "e599b0167ff7524e874fa855fb00781f76d3291bb0518e2308e17d6ab8fdaed4";
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
