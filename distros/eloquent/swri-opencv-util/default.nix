
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-eloquent-swri-opencv-util";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_opencv_util/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "4a4db4416a801c6f980fb249eceee0019051bec89a7e0eb586ba6f3229711864";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
