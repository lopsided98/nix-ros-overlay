
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-spdlog";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_spdlog/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "f8fd45f3e1eafaca73932c0d452bfca5bc3d41fb09a5dd2d71f2ec72afb0fd82";
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
