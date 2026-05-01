
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, cppzmq, gz-cmake-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, pkg-config, protobuf, python3, python3Packages, sqlite, util-linux, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-gz-transport-vendor";
  version = "0.3.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_transport_vendor-release/archive/release/lyrical/gz_transport_vendor/0.3.4-3.tar.gz";
    name = "0.3.4-3.tar.gz";
    sha256 = "adb8a7af7d6263045728eb100890737d4e59c567c1987a7b4681a1b16c7c8eda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ cppzmq gz-cmake-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor pkg-config protobuf python3 python3Packages.psutil python3Packages.pybind11 python3Packages.pytest sqlite util-linux zenoh-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-transport 15.0.2

    Gazebo Transport: Provides fast and efficient asynchronous message passing, services, and data logging.";
    license = with lib.licenses; [ asl20 ];
  };
}
