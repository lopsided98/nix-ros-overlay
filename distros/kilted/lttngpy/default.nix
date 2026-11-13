
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, lttng-tools, pkg-config, pybind11-vendor, python3, rpyutils }:
buildRosPackage {
  pname = "ros-kilted-lttngpy";
  version = "8.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/lttngpy/8.6.1-1.tar.gz";
    name = "8.6.1-1.tar.gz";
    sha256 = "f557f95386deabb906d3e361db801f75117b4689ddfe369b1a25a3c464c0ce38";
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
