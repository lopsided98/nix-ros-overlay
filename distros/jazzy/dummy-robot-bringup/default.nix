
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, dummy-map-server, dummy-sensors, launch, launch-ros, robot-state-publisher }:
buildRosPackage {
  pname = "ros-jazzy-dummy-robot-bringup";
  version = "0.33.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/dummy_robot_bringup/0.33.11-1.tar.gz";
    name = "0.33.11-1.tar.gz";
    sha256 = "7908e64e3acf1381553eb196ff105dd0606fbc8443ed553a59425f60627246c4";
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
