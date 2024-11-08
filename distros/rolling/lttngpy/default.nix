
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, pybind11-vendor, rpyutils }:
buildRosPackage {
  pname = "ros-rolling-lttngpy";
  version = "8.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/lttngpy/8.4.0-1.tar.gz";
    name = "8.4.0-1.tar.gz";
    sha256 = "882b9167053ab5333e73732a95924950052dc651c9e1092a58ba09fb1bace4d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config pybind11-vendor ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools rpyutils ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "liblttng-ctl Python bindings";
    license = with lib.licenses; [ asl20 ];
  };
}
