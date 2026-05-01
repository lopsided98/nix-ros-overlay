
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-kortex-api";
  version = "0.2.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/lyrical/kortex_api/0.2.5-4.tar.gz";
    name = "0.2.5-4.tar.gz";
    sha256 = "c9942d37ebcf74ed488d59678ac5e973b1ef57c73fab22f1bafe10c32c1d42df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KINOVA KORTEX™ API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
