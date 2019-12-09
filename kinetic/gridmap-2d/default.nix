
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, nav-msgs, rosconsole, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-gridmap-2d";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/gridmap_2d/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "6effc57a592a8641ce08172a58a76376798283ba0a9263eee55416e7a80f1c02";
  };

  buildType = "catkin";
  buildInputs = [ nav-msgs rosconsole roscpp opencv3 ];
  propagatedBuildInputs = [ nav-msgs rosconsole roscpp opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gridmap_2d - a simple 2D gridmap structure, based on OpenCV's cv::Mat'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
