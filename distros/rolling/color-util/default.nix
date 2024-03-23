
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-color-util";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/rolling/color_util/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "c3e0ed124fddcb0e612fe78d7169c26646264f6039e12d93b871533f99790aa5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An almost dependency-less library for converting between color spaces";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
