
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-color-util";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/color_util-release/archive/release/foxy/color_util/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8dc28e34e65224ebd4acf84533012e27258637412dee65fd4c51d74f55501af8";
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
