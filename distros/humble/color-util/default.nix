
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-humble-color-util";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/color_util-release/archive/release/humble/color_util/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ad88e72db74ed89e5ea85d0c4ecfe934ae1b990321de7927742260d02ad380b2";
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
