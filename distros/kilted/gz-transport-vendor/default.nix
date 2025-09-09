
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, cppzmq, gz-cmake-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, pkg-config, protobuf, python3, python3Packages, sqlite, util-linux }:
buildRosPackage {
  pname = "ros-kilted-gz-transport-vendor";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_transport_vendor-release/archive/release/kilted/gz_transport_vendor/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "deb8fdf03342606ba3e78ba99e56d51b16ea2c482308fa6d1e0950febe515659";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ cppzmq gz-cmake-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor pkg-config protobuf python3 python3Packages.psutil python3Packages.pybind11 python3Packages.pytest sqlite util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-transport14 14.0.1

    Gazebo Transport: Provides fast and efficient asynchronous message passing, services, and data logging.";
    license = with lib.licenses; [ asl20 ];
  };
}
