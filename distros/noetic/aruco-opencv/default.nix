
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-opencv-msgs, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-aruco-opencv";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/aruco_opencv-release/archive/release/noetic/aruco_opencv/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "173ba86a5ab4ea37c1fd173609664cc459946fb22d54542d8fe0009eb49351aa";
  };

  buildType = "catkin";
  buildInputs = [ aruco-opencv-msgs catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport nodelet roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArUco marker detection using aruco module from OpenCV libraries.'';
    license = with lib.licenses; [ mit ];
  };
}
