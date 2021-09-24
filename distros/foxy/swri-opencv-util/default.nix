
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-foxy-swri-opencv-util";
  version = "3.3.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/swri_opencv_util/3.3.2-2.tar.gz";
    name = "3.3.2-2.tar.gz";
    sha256 = "5e8db7110c473d71d7baf5744f4fc524227832355a275cc2ed0b9b23414b10f4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
