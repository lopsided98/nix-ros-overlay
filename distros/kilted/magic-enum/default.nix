
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-magic-enum";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/kilted/magic_enum/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "50f43e7a142187385e45b0430c7f5a660da8a76038cb44dad8cb57bf0e2cceb4";
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
