
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rcl-logging-spdlog";
  version = "3.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/lyrical/rcl_logging_spdlog/3.4.1-3.tar.gz";
    name = "3.4.1-3.tar.gz";
    sha256 = "0f08a4b3038059f7d23687cd5447ee8ad49d763d8484d4e0171a5132b4f99fe6";
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
