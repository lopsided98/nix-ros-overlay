
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav-2d-utils, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-graceful-controller";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_graceful_controller/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "b218bd55f12d0bd59aea82f484846b082217328169dd0f6546b5b91b9eb0e60d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav2-controller ];
  propagatedBuildInputs = [ angles geometry-msgs nav-2d-utils nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Graceful motion controller";
    license = with lib.licenses; [ asl20 ];
  };
}
