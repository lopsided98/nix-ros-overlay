
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-costmap-queue";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/costmap_queue/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "d82e0f1922caa20a0c0a370dd60b39066f06d2baac57a4c5e70e952e30bb7cef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-costmap-2d rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The costmap_queue package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
