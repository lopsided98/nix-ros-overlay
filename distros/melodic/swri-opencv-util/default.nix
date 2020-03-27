
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "f24e7b464318322a06016cd2716b86ef11f62345da35fde98b4b6a5e437a386e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
