
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, python3, python3Packages, rpyutils }:
buildRosPackage {
  pname = "ros-rolling-lttngpy";
  version = "8.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/lttngpy/8.9.0-1.tar.gz";
    name = "8.9.0-1.tar.gz";
    sha256 = "69c057d093d2352239f7d1986075e4586a9b043f34f20c334b87421e276785bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config python3 python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools rpyutils ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "liblttng-ctl Python bindings";
    license = with lib.licenses; [ asl20 ];
  };
}
