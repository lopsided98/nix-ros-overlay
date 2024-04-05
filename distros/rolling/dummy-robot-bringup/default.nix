
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, dummy-map-server, dummy-sensors, launch, launch-ros, robot-state-publisher }:
buildRosPackage {
  pname = "ros-rolling-dummy-robot-bringup";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_robot_bringup/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "d857e81c2b45c91e343a829b1d4745b7b0e722d820d0392f4be2a548081b3805";
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
