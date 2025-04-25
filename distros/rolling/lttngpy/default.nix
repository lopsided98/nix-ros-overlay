
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, pybind11-vendor, python3, rpyutils }:
buildRosPackage {
  pname = "ros-rolling-lttngpy";
  version = "8.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/lttngpy/8.6.0-1.tar.gz";
    name = "8.6.0-1.tar.gz";
    sha256 = "692fd9b7e0f09aea758af08718fbbb1603d5d28de4bb9f1b8a95aaf870a6369c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config pybind11-vendor python3 ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools rpyutils ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "liblttng-ctl Python bindings";
    license = with lib.licenses; [ asl20 ];
  };
}
