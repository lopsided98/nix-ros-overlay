
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-interface";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_interface/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "0b067af1166d08d50d54ad4181ac01427d99ad4f5d79ff0cd354b11569d02670";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common rcpputils ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Interface that rcl_logging backends needs to implement.'';
    license = with lib.licenses; [ asl20 ];
  };
}
