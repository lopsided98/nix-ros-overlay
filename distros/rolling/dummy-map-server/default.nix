
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-dummy-map-server";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_map_server/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "9d431324cf7b7077efbf3e89d1d5a0a3da013ec6dc8486f119d3bbd6ddf09b97";
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
