
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pybind11-vendor, python-cmake-module, rpyutils }:
buildRosPackage {
  pname = "ros-jazzy-lttngpy";
  version = "8.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/lttngpy/8.2.0-2.tar.gz";
    name = "8.2.0-2.tar.gz";
    sha256 = "7ab227728088d4fbf03c7a5e78b3bdf21de65e22bbaff63ba11a24181f472c27";
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
