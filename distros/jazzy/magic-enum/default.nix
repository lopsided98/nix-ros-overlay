
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-magic-enum";
  version = "0.9.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/jazzy/magic_enum/0.9.7-3.tar.gz";
    name = "0.9.7-3.tar.gz";
    sha256 = "1196d3b7a2752b94c8ae621b2392b6929184fe6fee59aeff559a60e0bdf9f937";
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
