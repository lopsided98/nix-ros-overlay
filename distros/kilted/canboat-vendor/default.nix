
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-canboat-vendor";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/canboat_vendor-release/archive/release/kilted/canboat_vendor/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "122c07e7ce00d941a7a40b7cf016ca0d2c8f536d302d143e770c696c73116aa6";
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
