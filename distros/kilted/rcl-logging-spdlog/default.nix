
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-kilted-rcl-logging-spdlog";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/kilted/rcl_logging_spdlog/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "e04a18946f0088637de34a6abd253bb44c766fc736558123fa84abbacdabb66b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcl-logging-interface rcpputils rcutils spdlog spdlog-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Implementation of rcl_logging API for an spdlog backend.";
    license = with lib.licenses; [ asl20 ];
  };
}
