
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-urg-c";
  version = "1.0.4001-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/jazzy/urg_c/1.0.4001-6.tar.gz";
    name = "1.0.4001-6.tar.gz";
    sha256 = "461d494dee5a8552c87971cbe5e6e6863dce9470bcbc02831698065e1d930a7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The urg_c package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
