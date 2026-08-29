
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, cppzmq, gz-cmake-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, pkg-config, protobuf, python3, python3Packages, sqlite, util-linux, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-transport-vendor";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_transport_vendor-release/archive/release/rolling/gz_transport_vendor/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "6ce1149e827e793c2cd17c5c16e53fef628e78ac2bc53b1f5ef55fa3b303557d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ cppzmq gz-cmake-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor pkg-config protobuf python3 python3Packages.psutil python3Packages.pybind11 python3Packages.pytest sqlite util-linux zenoh-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-transport 16.0.0

    Gazebo Transport: Provides fast and efficient asynchronous message passing, services, and data logging.";
    license = with lib.licenses; [ asl20 ];
  };
}
