
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcl-logging-noop, rcl-logging-spdlog, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-implementation";
  version = "3.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_implementation/3.4.1-2.tar.gz";
    name = "3.4.1-2.tar.gz";
    sha256 = "30e23943c81cfd80ba5129db9f91dea92fb66519d2fd0e9fab968fc18691f7f2";
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
