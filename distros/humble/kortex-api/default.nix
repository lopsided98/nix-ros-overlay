
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-kortex-api";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_api/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "72bb72039b721b75834bea36c636e6363c2b0796889132f2164085f7c25a80b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "kortex_api";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
