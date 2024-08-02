
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-noop";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_noop/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "9d19c94c210592c7a68b05130f6347e152eb5a33a7bbc9ac4851cd07146d8d54";
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
