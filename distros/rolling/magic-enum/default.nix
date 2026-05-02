
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/rolling/magic_enum/0.9.7-2.tar.gz";
    name = "0.9.7-2.tar.gz";
    sha256 = "d1a0edef4649412a361121ebaa37451c245d803acc07d632053ea4e81be44ad2";
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
