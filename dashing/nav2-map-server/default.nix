
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, ament-cmake-pytest, SDL, ament-cmake, rclcpp-lifecycle, SDL_image, launch-ros, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, nav2-common, tf2, nav-msgs, rclcpp, std-msgs, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-nav2-map-server";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_map_server/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "a7e8aab04fe572b71a58fa5d08f57ced46fc852734af30c647e086cee2a3b486";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor SDL SDL_image launch-ros rclcpp-lifecycle launch-testing nav2-util nav2-common tf2 nav-msgs rclcpp std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor SDL rclcpp-lifecycle SDL_image launch-ros launch-testing nav2-util tf2 nav-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
