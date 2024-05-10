
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pybind11-vendor, python-cmake-module, rpyutils }:
buildRosPackage {
  pname = "ros-rolling-lttngpy";
  version = "8.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/lttngpy/8.3.0-1.tar.gz";
    name = "8.3.0-1.tar.gz";
    sha256 = "33dbdd095c3b8c0924b6cb6f08541b89a000fb44b9dfabcfe1e9cab782707e45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools rpyutils ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "liblttng-ctl Python bindings";
    license = with lib.licenses; [ asl20 ];
  };
}
