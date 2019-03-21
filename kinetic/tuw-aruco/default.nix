
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, image-transport, cv-bridge, catkin, roscpp, image-geometry, rospy, std-msgs, dynamic-reconfigure, tf }:
buildRosPackage {
  pname = "ros-kinetic-tuw-aruco";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_aruco/0.0.7-0.tar.gz;
    sha256 = "e599b0167ff7524e874fa855fb00781f76d3291bb0518e2308e17d6ab8fdaed4";
  };

  propagatedBuildInputs = [ marker-msgs image-transport cv-bridge roscpp rospy image-geometry dynamic-reconfigure std-msgs tf ];
  nativeBuildInputs = [ marker-msgs image-transport cv-bridge catkin roscpp rospy image-geometry dynamic-reconfigure std-msgs tf ];

  meta = {
    description = ''This is a wrapper around the marker detection library ArUco.'';
    #license = lib.licenses.BSD;
  };
}
