
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, launch-ros, ros2run, ament-cmake-gtest, launch, robot-state-publisher, ament-index-python, ament-lint-auto, dummy-sensors, dummy-map-server }:
buildRosPackage {
  pname = "ros-dashing-dummy-robot-bringup";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/dashing/dummy_robot_bringup/0.7.8-1.tar.gz;
    sha256 = "038919ef62b158ababa8b6ca994cbfbbaee8a3551743418953284dcacd3158f1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ros2run launch-ros launch robot-state-publisher ament-index-python dummy-sensors dummy-map-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy robot bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
