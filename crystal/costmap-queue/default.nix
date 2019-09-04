
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, boost, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, rclcpp, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-costmap-queue";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/costmap_queue/0.1.7-0.tar.gz;
    sha256 = "b4d9d3b0b6b5447d9292858ee3a711bd91973ab3cb9b943945eea0b860ca1b7e";
  };

  buildInputs = [ boost rclcpp nav2-costmap-2d nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp nav2-costmap-2d boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The costmap_queue package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
