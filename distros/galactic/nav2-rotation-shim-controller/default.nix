
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-regulated-pure-pursuit-controller, nav2-util, pluginlib, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-galactic-nav2-rotation-shim-controller";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_rotation_shim_controller/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "d431c0831a564ecab12885895b405a78ee7a6818aa7499d6aaeb157a72e34a59";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav2-controller nav2-regulated-pure-pursuit-controller ];
  propagatedBuildInputs = [ angles geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Rotation Shim Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
