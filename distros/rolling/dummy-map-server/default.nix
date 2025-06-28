
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-dummy-map-server";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_map_server/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "b6e9b4ad647c9d678023c422fcf39ce2e0cdd956ddbf3fa5b1fbc8cc7bcecbe4";
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
