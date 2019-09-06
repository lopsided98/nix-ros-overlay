
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, rclcpp, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-costmap-queue";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/costmap_queue/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "2e3016b74cce0d896259e96d75610fb5367e5f73e6b77f9229a9cbfc179d184c";
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
