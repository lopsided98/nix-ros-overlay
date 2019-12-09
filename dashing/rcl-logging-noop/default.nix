
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, rcutils, launch-testing, ament-lint-common, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-gmock, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rcl-logging-noop";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/dashing/rcl_logging_noop/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "f8e60d4a2316ff2bc5c069640520578895c1c16339be9fd8202efd85651835e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils ];
  checkInputs = [ launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-cmake-gmock ament-lint-auto ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''An rcl logger implementation that doesn't do anything with log messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
