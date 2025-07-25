
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-jazzy-canboat-vendor";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/canboat_vendor-release/archive/release/jazzy/canboat_vendor/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "4b7811254e1328dd1d77f4669bf81970ed1f9e816732f06f5c7d16f29eb648b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Thin package wrapper for Canboat";
    license = with lib.licenses; [ asl20 ];
  };
}
