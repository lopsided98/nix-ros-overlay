
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-magic-enum";
  version = "0.9.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/magic_enum-release/archive/release/kilted/magic_enum/0.9.6-2.tar.gz";
    name = "0.9.6-2.tar.gz";
    sha256 = "9c93fe92cb7a7cb0730c3477ebb72bad5ba8f2bb733766f509536b3b7cf60471";
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
