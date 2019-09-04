
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, ament-cmake-pytest, SDL, bullet, ament-cmake, SDL_image, launch-ros, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, tf2, nav-msgs, rclcpp, std-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-map-server";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_map_server/0.1.7-0.tar.gz;
    sha256 = "6c27f751875f417cb7e257fcb21f3c616af90b6f4d215e4fae98c3bfa34587d9";
  };

  buildInputs = [ yaml-cpp-vendor SDL bullet SDL_image launch-ros launch-testing nav2-common tf2 nav-msgs rclcpp std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor SDL bullet SDL_image launch-ros launch-testing tf2 nav-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
