
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-kilted-rcl-logging-noop";
  version = "3.2.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/kilted/rcl_logging_noop/3.2.3-4.tar.gz";
    name = "3.2.3-4.tar.gz";
    sha256 = "fb266a858479766dc52df38b89f0c13a97f402c4d63deca8bbe58cb21358f7e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing ];
  propagatedBuildInputs = [ rcl-logging-interface rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = "An rcl logger implementation that doesn't do anything with log messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
