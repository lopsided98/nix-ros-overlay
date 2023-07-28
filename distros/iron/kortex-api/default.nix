
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-kortex-api";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/iron/kortex_api/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "59201ee61a5167c7ba2e695e91f2a30f4be95d27232202e0ade6f99a49ba4662";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''kortex_api'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
