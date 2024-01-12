
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-urg-c";
  version = "1.0.4001-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/rolling/urg_c/1.0.4001-4.tar.gz";
    name = "1.0.4001-4.tar.gz";
    sha256 = "d67714f3125a8e580def469a2ef6e576a900d5c37ea5868d98a216f9bbeed4e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
