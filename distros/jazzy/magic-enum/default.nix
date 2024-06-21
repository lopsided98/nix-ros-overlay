
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-magic-enum";
  version = "0.9.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/jazzy/magic_enum/0.9.5-3.tar.gz";
    name = "0.9.5-3.tar.gz";
    sha256 = "af51799ec77de0f97d3a3578cf6a038e26e72a5c9d3d2ddad0f01bb9e457a19f";
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
