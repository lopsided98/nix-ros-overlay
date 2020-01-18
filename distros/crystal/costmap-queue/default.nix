
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch, launch-testing, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-costmap-queue";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/costmap_queue/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "b4d9d3b0b6b5447d9292858ee3a711bd91973ab3cb9b943945eea0b860ca1b7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ boost nav2-costmap-2d rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The costmap_queue package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
