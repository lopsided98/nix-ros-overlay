
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-jazzy-rcl-logging-interface";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/jazzy/rcl_logging_interface/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "c0a3490f83a7a12d284619daf4eeb1050855fa989db6e80f8036bb117913a346";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common rcpputils ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Interface that rcl_logging backends needs to implement.";
    license = with lib.licenses; [ asl20 ];
  };
}
