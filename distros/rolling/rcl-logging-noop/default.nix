
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-noop";
  version = "3.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_noop/3.4.1-2.tar.gz";
    name = "3.4.1-2.tar.gz";
    sha256 = "f45bfe19a53afe70d4de39ffae2bdd8dea71c07227e6ceba257865482ae0b893";
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
