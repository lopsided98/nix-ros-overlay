
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-iron-color-util";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/iron/color_util/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "9c0754c0d0e0f8ec45479253f8f783f237db09a61c98f57ec819c154bae8a5f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An almost dependency-less library for converting between color spaces'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
