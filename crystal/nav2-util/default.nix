
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, SDL, ament-cmake, SDL_image, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, launch, tf2-ros, nav2-common, tf2, nav-msgs, rclcpp, ament-lint-auto, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-util";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_util/0.1.7-0.tar.gz;
    sha256 = "adbc4db869d72bdb3867c5d69caec08ca78918b7e4cb5cff07c244c9c4c5dbd6";
  };

  buildType = "ament_cmake";
  buildInputs = [ SDL SDL_image nav2-msgs tf2-ros nav2-common tf2 nav-msgs rclcpp geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ SDL SDL_image nav2-msgs tf2-ros tf2 nav-msgs rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
