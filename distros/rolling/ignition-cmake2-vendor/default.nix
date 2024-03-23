
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ignition-cmake2-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_cmake2_vendor-release/archive/release/rolling/ignition_cmake2_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "95557f361ebd65456dee27bd053aa62c1eb97d589cf6a24694e840cdb9a8268d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "This package provides the Ignition CMake 2.x library.";
    license = with lib.licenses; [ asl20 ];
  };
}
