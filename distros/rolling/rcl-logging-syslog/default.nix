
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, rsyslog }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-syslog";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging_syslog-release/archive/release/rolling/rcl_logging_syslog/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "da212f6f1fa640a928fea485c93809daefb8eda519f4e3ba3dcbd7980d50bdb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcl-logging-interface rcpputils rcutils rsyslog ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Implementation of rcl_logging API for an syslog/rsyslog backend.";
    license = with lib.licenses; [ asl20 ];
  };
}
