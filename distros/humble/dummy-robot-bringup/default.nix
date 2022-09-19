
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, dummy-map-server, dummy-sensors, launch, launch-ros, robot-state-publisher }:
buildRosPackage {
  pname = "ros-humble-dummy-robot-bringup";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/dummy_robot_bringup/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "ac74ea9afbc4368facfc9f796b291ee19ad05b4629552c1a8755cafeeeafd285";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python dummy-map-server dummy-sensors launch launch-ros robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy robot bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
