
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-magic-enum";
  version = "0.9.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/lyrical/magic_enum/0.9.7-3.tar.gz";
    name = "0.9.7-3.tar.gz";
    sha256 = "052c04a16447d5e013bd11c74944a8f61ec3cc729b01c32e4f7aa7b03a3b2fc9";
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
