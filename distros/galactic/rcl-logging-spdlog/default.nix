
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-galactic-rcl-logging-spdlog";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/galactic/rcl_logging_spdlog/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "cdf4e078cac5649228f252a0a9d85a839c6f05be7573f04bd721da5d7b31d3d5";
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
