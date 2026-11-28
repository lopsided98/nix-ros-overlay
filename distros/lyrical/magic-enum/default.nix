
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-magic-enum";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/lyrical/magic_enum/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "d5e0ce0d9bfa033419a3792ee70d3111cab884e6ea29f26bedfd1130c512bdcd";
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
