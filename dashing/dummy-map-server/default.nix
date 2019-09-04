
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, nav-msgs, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dummy-map-server";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/dashing/dummy_map_server/0.7.8-1.tar.gz;
    sha256 = "82d89d816738d92a58c6e6358cca48e4f784b8097753d8b6fc7f3a10a4b0bad7";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav-msgs rclcpp ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy map server node'';
    license = with lib.licenses; [ asl20 ];
  };
}
