
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-magic-enum";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/jazzy/magic_enum/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "3eb33164931dcd0599e1df1c31f4919e532b95bbed92336608b48a26253cb587";
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
