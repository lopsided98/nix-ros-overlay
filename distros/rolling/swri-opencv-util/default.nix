
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-rolling-swri-opencv-util";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_opencv_util/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "14adc243ab0f987bd192429c0beed91ed5e20c45f5cf7ea63cbe3a1364e3a467";
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
