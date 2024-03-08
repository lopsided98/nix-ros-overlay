
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-magic-enum";
  version = "0.9.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/rolling/magic_enum/0.9.5-2.tar.gz";
    name = "0.9.5-2.tar.gz";
    sha256 = "3d01be1a650e8f72b57c87ba4e43bd3b42e2c8413dbb02fd6384eef5d17e33c6";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code'';
    license = with lib.licenses; [ mit ];
  };
}
