
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bullet, launch, launch-ros, launch-testing, nav-msgs, nav2-common, rclcpp, std-msgs, tf2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-crystal-nav2-map-server";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_map_server/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "6c27f751875f417cb7e257fcb21f3c616af90b6f4d215e4fae98c3bfa34587d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ SDL SDL_image bullet launch-ros launch-testing nav-msgs rclcpp std-msgs tf2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 ];
  };
}
