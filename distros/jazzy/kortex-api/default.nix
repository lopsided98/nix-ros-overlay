
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-kortex-api";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/jazzy/kortex_api/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "082c5aa04aa0432cc0a646fb79d833f1d640c068d0888774dec385be4e55e821";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KINOVA KORTEX™ API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
