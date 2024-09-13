
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pybind11-vendor, python-cmake-module, rpyutils }:
buildRosPackage {
  pname = "ros-jazzy-lttngpy";
  version = "8.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/lttngpy/8.2.2-1.tar.gz";
    name = "8.2.2-1.tar.gz";
    sha256 = "14079290c164829d43aaa1b9f896b3ecbf0c28f60c85940b57d7012fd2932818";
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
