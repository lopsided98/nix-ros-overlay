
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl-logging-interface, rcpputils, rcutils, rsyslog }:
buildRosPackage {
  pname = "ros-lyrical-rcl-logging-syslog";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging_syslog-release/archive/release/lyrical/rcl_logging_syslog/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "20f90419a7784eb0cb8411b7eadf10bab22e061a9ac54e1e3417343fda688fe5";
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
