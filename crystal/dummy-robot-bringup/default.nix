
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, launch-ros, ros2run, ament-cmake-gtest, launch, robot-state-publisher, ament-index-python, ament-lint-auto, dummy-sensors, dummy-map-server }:
buildRosPackage {
  pname = "ros-crystal-dummy-robot-bringup";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/dummy_robot_bringup/0.6.2-0.tar.gz;
    sha256 = "30e4072ba6f57663d61f629456bc07c74bd3a9678e9d94d85e7917f09781b468";
  };

  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ launch-ros ros2run launch robot-state-publisher ament-index-python dummy-sensors dummy-map-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy robot bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
