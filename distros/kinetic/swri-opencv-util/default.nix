
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-opencv-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_opencv_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "3d79c030de02d8dd54d50835d15225a4f8f0d6c294eec999ea039d26a6d761f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
