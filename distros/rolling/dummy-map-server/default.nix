
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-dummy-map-server";
  version = "0.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_map_server/0.23.0-1.tar.gz";
    name = "0.23.0-1.tar.gz";
    sha256 = "42663944fbfc05f91cf3dd66c773bdc5ee653c7b36b66a1a70d7c2ab800f1358";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy map server node'';
    license = with lib.licenses; [ asl20 ];
  };
}
