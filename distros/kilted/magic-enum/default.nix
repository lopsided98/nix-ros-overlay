
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-magic-enum";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/kilted/magic_enum/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "e7fdb63f7cd446d023bc78a6b0291f3d32d9f001a3f23a2a991c2c1a4bf5b096";
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
