
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-noop";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_noop/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "4f67c99d899c5bf7c46c9f40834a1cd4cb7974886c49d2302acb8b00e7222ca9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing ];
  propagatedBuildInputs = [ rcl-logging-interface rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = "An rcl logger implementation that doesn't do anything with log messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
