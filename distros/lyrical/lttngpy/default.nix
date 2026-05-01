
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, python3, python3Packages, rpyutils }:
buildRosPackage {
  pname = "ros-lyrical-lttngpy";
  version = "8.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/lyrical/lttngpy/8.10.2-1.tar.gz";
    name = "8.10.2-1.tar.gz";
    sha256 = "4f7a225876511b53c7130e0310649ef6851011f440266b1ad0f7f57986197d06";
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
