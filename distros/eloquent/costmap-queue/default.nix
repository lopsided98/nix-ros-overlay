
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-costmap-queue";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/costmap_queue/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "7fd16784a8a1f67f8cc1bf4ec465503ba4aac4717c8f3e876b59edbb3a867af3";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-costmap-2d rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The costmap_queue package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
