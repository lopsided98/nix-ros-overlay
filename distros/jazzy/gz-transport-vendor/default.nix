
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cppzmq, gz-cmake-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, pkg-config, protobuf, python3, python3Packages, pythonPackages, sqlite, util-linux }:
buildRosPackage {
  pname = "ros-jazzy-gz-transport-vendor";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_transport_vendor-release/archive/release/jazzy/gz_transport_vendor/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "75b44609099cfb545594e45a1b86977a1f2a9007879a923f5a9f52c8596162d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ cppzmq gz-cmake-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor pkg-config protobuf python3 python3Packages.psutil pythonPackages.pybind11 pythonPackages.pytest sqlite util-linux ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-transport13 13.4.0

    Gazebo Transport: Provides fast and efficient asynchronous message passing, services, and data logging.";
    license = with lib.licenses; [ asl20 ];
  };
}
