
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, pybind11-vendor, python-cmake-module, rpyutils }:
buildRosPackage {
  pname = "ros-jazzy-lttngpy";
  version = "8.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/lttngpy/8.2.6-1.tar.gz";
    name = "8.2.6-1.tar.gz";
    sha256 = "d7146c4b0b5c1b3bce245e49323260feb69d9fc66542e872225474a6b4258d9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config pybind11-vendor python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lttng-tools rpyutils ];
  nativeBuildInputs = [ ament-cmake pkg-config python-cmake-module ];

  meta = {
    description = "liblttng-ctl Python bindings";
    license = with lib.licenses; [ asl20 ];
  };
}
