
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/rolling/magic_enum/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "ba547a65f69284866b4c3e30a8f1d2f0d372d1d684104b9abac6e5d99f700dfc";
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
