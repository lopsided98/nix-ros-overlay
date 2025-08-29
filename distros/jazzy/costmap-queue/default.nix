
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-costmap-queue";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/costmap_queue/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "027a6ee2861df083441f6ed954be63e04c66d93f5a3f9d51fdf5758183785279";
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
