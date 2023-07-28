
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-kortex-api";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_api/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "1fc2415d9cd173a7ca936220e4f4b627579153150371742962d5ba2b401190b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''kortex_api'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
