
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcl-logging-noop, rcl-logging-spdlog, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-lyrical-rcl-logging-implementation";
  version = "3.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/lyrical/rcl_logging_implementation/3.4.1-3.tar.gz";
    name = "3.4.1-3.tar.gz";
    sha256 = "5c62d7fe0c47688256ec4f4f0d277986474c56b3e5742f197b7b22008d8e6d25";
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
