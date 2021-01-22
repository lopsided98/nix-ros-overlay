
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge }:
buildRosPackage {
  pname = "ros-kinetic-opencv-candidate";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/opencv_candidate-release/archive/release/kinetic/opencv_candidate/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "bea19bc2d54c5a09dc22c301ca24fbb1521c92c14443f72cc64affa68c2ecc27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Experimental OpenCV functions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
