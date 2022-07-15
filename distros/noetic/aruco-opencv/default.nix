
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, nodelet, roscpp, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-aruco-opencv";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/aruco_opencv-release/archive/release/noetic/aruco_opencv/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "11d15b4f656ba5b83f80f7c629e0aefba94fa7a32f5142abdc9496d2ed860f02";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs image-transport message-runtime nodelet roscpp std-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArUco marker detection using aruco module from OpenCV libraries.'';
    license = with lib.licenses; [ mit ];
  };
}
