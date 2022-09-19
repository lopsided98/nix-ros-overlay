
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog, spdlog-vendor }:
buildRosPackage {
  pname = "ros-humble-rcl-logging-spdlog";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/humble/rcl_logging_spdlog/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "f74ae8d5a66d6738f980026196796f01bf80bbb205c177f220fec42c4f6ed9ee";
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
