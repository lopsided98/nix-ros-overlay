
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-magic-enum";
  version = "0.9.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/jazzy/magic_enum/0.9.8-2.tar.gz";
    name = "0.9.8-2.tar.gz";
    sha256 = "1c56087c1fa9302bba8ae681d9a3ecc45ecf0ea7bdffd5dcf6d30bcb54c644ea";
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
