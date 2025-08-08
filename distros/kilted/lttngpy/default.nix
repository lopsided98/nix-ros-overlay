
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, pybind11-vendor, python3, rpyutils }:
buildRosPackage {
  pname = "ros-kilted-lttngpy";
  version = "8.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/lttngpy/8.6.0-2.tar.gz";
    name = "8.6.0-2.tar.gz";
    sha256 = "c4cc09f84d27f8ea7c456fbd1abaf287a5cf57dab93f05ff3ddf37d9c354577e";
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
