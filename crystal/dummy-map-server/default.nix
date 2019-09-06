
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, nav-msgs, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-dummy-map-server";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/dummy_map_server/0.6.2-0.tar.gz;
    sha256 = "90e3e9890a0b7f07e13a20da7af26cfb7fe15ff10b324080c20f9c4a1300563b";
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
