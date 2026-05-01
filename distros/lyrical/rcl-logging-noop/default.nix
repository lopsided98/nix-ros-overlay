
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-lyrical-rcl-logging-noop";
  version = "3.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/lyrical/rcl_logging_noop/3.4.1-3.tar.gz";
    name = "3.4.1-3.tar.gz";
    sha256 = "2509caee89c901de592ed0b1b6097609a78f0ab3443a341d342497c58459c1e2";
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
