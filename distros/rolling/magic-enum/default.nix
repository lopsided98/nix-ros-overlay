
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/rolling/magic_enum/0.9.8-2.tar.gz";
    name = "0.9.8-2.tar.gz";
    sha256 = "4d6432265e26a1f2d6d86ebc9589725d0a9e68d4ec2d4170d2da7c5e6be2f05b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code";
    license = with lib.licenses; [ mit ];
  };
}
