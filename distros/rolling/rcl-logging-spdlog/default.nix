
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-spdlog";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_spdlog/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "105b87c81319ba6c2937d5c3761e923dcb73ee1705e744ff781f61001008450a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcl-logging-interface rcpputils rcutils spdlog spdlog-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Implementation of rcl_logging API for an spdlog backend.'';
    license = with lib.licenses; [ asl20 ];
  };
}
