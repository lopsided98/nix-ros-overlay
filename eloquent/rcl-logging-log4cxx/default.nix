
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, log4cxx, python3Packages, rcutils }:
buildRosPackage {
  pname = "ros-eloquent-rcl-logging-log4cxx";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/eloquent/rcl_logging_log4cxx/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "9f5ad2d4fd2f874bcf2f131c5abc8b969c4e796d42222681c1b0d0b3c9293a73";
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
