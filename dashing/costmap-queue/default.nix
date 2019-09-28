
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, rclcpp, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-costmap-queue";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/costmap_queue/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "8f1500a2f345f2c98a497aabeee908e6f6baa4ee4b98af666b3b69cd83897014";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp nav2-costmap-2d nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp nav2-costmap-2d ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The costmap_queue package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
