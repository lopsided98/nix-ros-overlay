
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, ament-cmake-pytest, geometry-msgs, nav-msgs, SDL_image, launch, SDL, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, tf2, rclcpp, nav2-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-util";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_util/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "adbc4db869d72bdb3867c5d69caec08ca78918b7e4cb5cff07c244c9c4c5dbd6";
  };

  buildType = "ament_cmake";
  buildInputs = [ SDL_image geometry-msgs nav-msgs SDL nav2-common tf2 rclcpp nav2-msgs tf2-ros ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ SDL_image geometry-msgs nav-msgs SDL tf2 rclcpp nav2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
