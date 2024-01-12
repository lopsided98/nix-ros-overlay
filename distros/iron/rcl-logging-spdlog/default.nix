
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-iron-rcl-logging-spdlog";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/iron/rcl_logging_spdlog/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "5a4d773ebf4bea2679e505d9c2c656cd431c5401b64efce9df4976db659efb37";
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
