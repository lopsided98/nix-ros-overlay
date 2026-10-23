
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcl-logging-noop, rcl-logging-spdlog, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-implementation";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_implementation/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "6cc305f0422f830b94170499b45f5560f0c10d3cff43e1f512f4bc9e9496d84c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rcl-logging-noop ];
  propagatedBuildInputs = [ rcl-logging-interface rcl-logging-spdlog rcpputils rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Provides the ability to load logging implementations at runtime.
    This package acts as an abstraction layer between rcl and the actual
    logging implementation (e.g., spdlog, noop, or custom implementations).";
    license = with lib.licenses; [ asl20 ];
  };
}
