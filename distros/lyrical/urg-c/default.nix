
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-urg-c";
  version = "1.0.4001-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/lyrical/urg_c/1.0.4001-7.tar.gz";
    name = "1.0.4001-7.tar.gz";
    sha256 = "458cfa87406c59aa94d4a50a65fead900ec6c7d354ef1cdcd79b960d1386046e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The urg_c package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
