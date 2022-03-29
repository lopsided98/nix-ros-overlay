
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-magic-enum";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/noetic/magic_enum/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "e202abeeafa9e4ed596c9e5d44a6627d95d9886e606e604cccbc57ff1b68bdcb";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Static reflection for enums (to string, from string, iteration) for modern C++,
    work with any enum type without any macro or boilerplate code'';
    license = with lib.licenses; [ mit ];
  };
}
