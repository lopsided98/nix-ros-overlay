
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-opencv-msgs, catkin, cv-bridge, dynamic-reconfigure, image-transport, libyamlcpp, nodelet, python39Packages, python3Packages, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-aruco-opencv";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/aruco_opencv-release/archive/release/noetic/aruco_opencv/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "7aa3964e42462c94d26e3050b9442e70b4423754f1bcd7cedff45bfc91616e32";
  };

  buildType = "catkin";
  buildInputs = [ aruco-opencv-msgs catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport libyamlcpp nodelet python39Packages.img2pdf python3Packages.numpy python3Packages.opencv3 roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArUco marker detection using aruco module from OpenCV libraries.'';
    license = with lib.licenses; [ mit ];
  };
}
