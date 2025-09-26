
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav-2d-utils, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-graceful-controller";
  version = "1.3.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_graceful_controller/1.3.9-1.tar.gz";
    name = "1.3.9-1.tar.gz";
    sha256 = "39406c73b3d40ed6e95632ce617695abfd214d82b611ff719f0c91740d9adf45";
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
