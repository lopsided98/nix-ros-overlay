
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-color-util";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/kilted/color_util/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "6cef3aeb18b50bcb7427c6fac410f00260682d20f1b706772c8496d154e1566e";
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
