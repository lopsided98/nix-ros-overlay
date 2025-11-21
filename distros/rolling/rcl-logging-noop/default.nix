
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-noop";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_noop/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "d0e5f8824fb4e57bb571d1c2ab419c6d11536b2db6310e2501f56bf68b0a77aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcl-logging-interface rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "An rcl logger implementation that doesn't do anything with log messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
