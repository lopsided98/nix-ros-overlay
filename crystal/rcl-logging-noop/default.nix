
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, launch-testing, ament-lint-common, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-gmock, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rcl-logging-noop";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/crystal/rcl_logging_noop/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "7820b3b21a0cd3964df0a6a60e6f385d4cd89ecc3dc59e8ae9c28b44f9bc0139";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''An rcl logger implementation that doesn't do anything with log messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
