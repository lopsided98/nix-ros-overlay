
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-kortex-api";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_api/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "d24452ed9b238a2a6ed0a3f675b0c4930e6f0057ccfcd1fa64aa22fd02b6de5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "kortex_api";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
