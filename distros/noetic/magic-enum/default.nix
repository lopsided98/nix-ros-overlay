
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-magic-enum";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/noetic/magic_enum/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "61de1b8f2efbce9574758aaaa3fb54128a78f93caa2d0c06f6d2e7815756811d";
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
