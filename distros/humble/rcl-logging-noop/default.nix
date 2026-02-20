
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-humble-rcl-logging-noop";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/humble/rcl_logging_noop/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "f60347f1e6a4a766201faa1547c49f14029223705088ad122d88b4a579378364";
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
