
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, spdlog }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-spdlog";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_spdlog/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "9844d8a0b8f288abf7b8c082eacc198d25c0f4e75552510c04037bb2309c7a79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcl-logging-interface rcpputils rcutils spdlog ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Implementation of rcl_logging API for an spdlog backend.";
    license = with lib.licenses; [ asl20 ];
  };
}
