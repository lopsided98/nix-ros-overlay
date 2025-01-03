
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-osqp-vendor";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osqp_vendor-release/archive/release/jazzy/osqp_vendor/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "68acbb08af2c189daa0a726322bee0996c3b895173d9351a4ba9324fe184dcdc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Wrapper around osqp that ships with a CMake module";
    license = with lib.licenses; [ asl20 ];
  };
}
