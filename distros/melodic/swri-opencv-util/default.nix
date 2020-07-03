
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "bd85456c9599156025dcf5fa9bd4e82cb2f9cf9bc6ca74e4aa9c507c7fcb96c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
