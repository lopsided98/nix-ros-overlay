
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, dummy-map-server, dummy-sensors, launch, launch-ros, robot-state-publisher }:
buildRosPackage {
  pname = "ros-iron-dummy-robot-bringup";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/dummy_robot_bringup/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "f04ad715d967fb7e14a8aa940bd220800d67be63b09c9fb7f3ed96cf1d14776a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python dummy-map-server dummy-sensors launch launch-ros robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "dummy robot bringup";
    license = with lib.licenses; [ asl20 ];
  };
}
