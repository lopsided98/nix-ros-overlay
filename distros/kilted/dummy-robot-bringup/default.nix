
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, dummy-map-server, dummy-sensors, launch, launch-ros, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kilted-dummy-robot-bringup";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/dummy_robot_bringup/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "a5c8b5d8c18c60989e442d5bc5ef7112b514f41e998de5210166f891c4d1516b";
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
