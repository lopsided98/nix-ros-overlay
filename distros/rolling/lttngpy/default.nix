
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, python3, python3Packages, rpyutils }:
buildRosPackage {
  pname = "ros-rolling-lttngpy";
  version = "8.10.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/lttngpy/8.10.1-2.tar.gz";
    name = "8.10.1-2.tar.gz";
    sha256 = "01a124f90c0ce53dc20c70208ef1ae0bf83a00d00bffbb3308164be15e68f329";
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
