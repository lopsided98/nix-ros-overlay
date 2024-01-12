
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-color-util";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/color_util-release/archive/release/rolling/color_util/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b198e816837b6e32fed161596f19e48b069d321fc038f747b41febeeebd97a02";
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
