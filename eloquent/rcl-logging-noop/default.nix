
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-cmake-ros, rcutils, launch-testing, ament-lint-common, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-gmock, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rcl-logging-noop";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/eloquent/rcl_logging_noop/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "1d7d1f5552c96e570d795b5288efa542056748d7f34e5ac7f4ffafb2a9155101";
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
