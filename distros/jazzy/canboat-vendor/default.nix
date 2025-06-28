
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-canboat-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/canboat_vendor-release/archive/release/jazzy/canboat_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "af136208e2c768c4160f052617be9a6c848d489a76cec603c133f72e5714ca6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Thin package wrapper for Canboat";
    license = with lib.licenses; [ asl20 ];
  };
}
