
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dummy-sensors, robot-state-publisher, launch, launch-ros, ament-lint-common, ament-cmake, dummy-map-server, ament-cmake-gtest, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-dummy-robot-bringup";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/dummy_robot_bringup/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "88c92b991e94ea631ec390a9c25cc9c2d085bf3a9944ca77f077164170080e9a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ launch robot-state-publisher dummy-sensors launch-ros dummy-map-server ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy robot bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
