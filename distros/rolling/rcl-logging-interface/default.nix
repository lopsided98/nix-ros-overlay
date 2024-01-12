
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-interface";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_interface/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "8620e54ad71cc0ed5e9ad4150e7c96f4db29837f7a176e333d81b42169d626be";
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
