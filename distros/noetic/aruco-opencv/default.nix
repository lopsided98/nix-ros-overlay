
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-opencv-msgs, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, python3Packages, roscpp, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-aruco-opencv";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/aruco_opencv-release/archive/release/noetic/aruco_opencv/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "973b5a4f33db0d950a3948fc4fd7f6a7e32619a7ece3c1ee15850414eec938c0";
  };

  buildType = "catkin";
  buildInputs = [ aruco-opencv-msgs catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport nodelet python3Packages.img2pdf python3Packages.numpy python3Packages.opencv4 roscpp tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ArUco marker detection using aruco module from OpenCV libraries.";
    license = with lib.licenses; [ mit ];
  };
}
