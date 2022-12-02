
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-magic-enum";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/magic_enum-release/archive/release/humble/magic_enum/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "da533032dd091e7c8414799d79cfb5b6d913b819e2629d22dc308952fbbb7ad4";
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
