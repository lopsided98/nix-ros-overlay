
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-dummy-map-server";
  version = "0.37.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_map_server/0.37.5-1.tar.gz";
    name = "0.37.5-1.tar.gz";
    sha256 = "8acebfe2840501dc10e7af39f98cabf50b360c40e0b0a057dc5a86d18b83117b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "dummy map server node";
    license = with lib.licenses; [ asl20 ];
  };
}
