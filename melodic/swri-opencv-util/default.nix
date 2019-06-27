
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, cv-bridge }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.9.0-1.tar.gz;
    sha256 = "a3af76e9699e6aab99f6b3aa1bd30bda26b310fb4a2e630e1a1cbb22fb6b40b6";
  };

  buildInputs = [ swri-math-util cv-bridge ];
  propagatedBuildInputs = [ swri-math-util cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
