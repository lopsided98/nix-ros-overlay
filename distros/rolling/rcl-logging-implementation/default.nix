
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcl-logging-noop, rcl-logging-spdlog, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-implementation";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_implementation/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "b08e42c1d138699ac365adea1585f80e1791b2a82ed8f987c4890e27f1ac0946";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common rcl-logging-noop ];
  propagatedBuildInputs = [ rcl-logging-interface rcl-logging-spdlog rcpputils rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Provides the ability to load logging implementations at runtime.
    This package acts as an abstraction layer between rcl and the actual
    logging implementation (e.g., spdlog, noop, or custom implementations).";
    license = with lib.licenses; [ asl20 ];
  };
}
