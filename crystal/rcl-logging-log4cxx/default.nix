
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, launch-testing, ament-lint-common, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-gmock, log4cxx, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rcl-logging-log4cxx";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/crystal/rcl_logging_log4cxx/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "3b3814094f4ece619ceaf2f4da10e8727a961951ddc6f83812f355a8e86b888a";
  };

  buildType = "ament_cmake";
  buildInputs = [ log4cxx ];
  checkInputs = [ launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  propagatedBuildInputs = [ log4cxx ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''C API providing common interface to a shared library wrapping 3rd party loggers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
