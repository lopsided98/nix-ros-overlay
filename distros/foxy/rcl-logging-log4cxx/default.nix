
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, log4cxx, python3Packages, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rcl-logging-log4cxx";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/foxy/rcl_logging_log4cxx/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d38f5cbaefeb0c3649ee51ceacbf9a87096adfb8f14657668bf9e46c5a8602b4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing ];
  propagatedBuildInputs = [ log4cxx rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''C API providing common interface to a shared library wrapping 3rd party loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
