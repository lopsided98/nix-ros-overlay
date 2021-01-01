
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-dashing-swri-opencv-util";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_opencv_util/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "8bda2fc855b4f8979ab562f950b0c4cf028c0d17b2e8f6ee1bd08b86427c4cf1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
