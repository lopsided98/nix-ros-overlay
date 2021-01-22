
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-foxy-swri-opencv-util";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/swri_opencv_util/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "4696155c570479dc1873f3b30d2184e52567e3eefc0184987b27390e0d09a2bb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
