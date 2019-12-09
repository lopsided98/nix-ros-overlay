
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, ament-cmake-pytest, SDL_image, rclcpp, launch, std-msgs, launch-testing, SDL, launch-ros, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, tf2, bullet, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-map-server";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_map_server/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "6c27f751875f417cb7e257fcb21f3c616af90b6f4d215e4fae98c3bfa34587d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor SDL_image launch-testing std-msgs SDL launch-ros bullet nav2-common tf2 rclcpp nav-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor SDL_image rclcpp std-msgs launch-testing SDL launch-ros tf2 bullet nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
