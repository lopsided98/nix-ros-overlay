
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-kortex-api";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_api/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "8988ed51ed0ad809fab848c3a9da7ad3c8d6b6f2b32147a4b298320d4f4cc458";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''kortex_api'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
