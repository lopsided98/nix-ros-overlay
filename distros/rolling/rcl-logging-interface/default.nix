
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-interface";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_interface/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "e24d7d552d84efb52f3d5698c28bff9bc377fd683f2c893312b2a60699596f8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rcpputils ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Interface that rcl_logging backends needs to implement.";
    license = with lib.licenses; [ asl20 ];
  };
}
