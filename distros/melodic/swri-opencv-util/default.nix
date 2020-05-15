
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "63e6177b07bffe5a38b1668a8b5981c8ff206a7f20aa050e1e2d28387d24eee6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
