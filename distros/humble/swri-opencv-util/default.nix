
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-humble-swri-opencv-util";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_opencv_util/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "1c544e9d553e089dd23856111009748678886ed4bffb1d5729f561f85bc1d8ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
