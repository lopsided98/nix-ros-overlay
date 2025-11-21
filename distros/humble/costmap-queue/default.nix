
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-humble-costmap-queue";
  version = "1.1.20-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/costmap_queue/1.1.20-1.tar.gz";
    name = "1.1.20-1.tar.gz";
    sha256 = "e5c0a6a7d12b2f678d3c8ec80fa1b958383aa1e99f2b24d63ee5046e6d23a2fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-costmap-2d rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The costmap_queue package";
    license = with lib.licenses; [ bsd3 ];
  };
}
