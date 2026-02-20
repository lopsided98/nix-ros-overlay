
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-humble-rcl-logging-spdlog";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/humble/rcl_logging_spdlog/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "76e1a919cd5493f703e352b27386309c3bba02c1fca3eb82238cffe826dbf883";
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
