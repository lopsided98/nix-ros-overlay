
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-regulated-pure-pursuit-controller, nav2-util, pluginlib, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-humble-nav2-rotation-shim-controller";
  version = "1.1.7-r3";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_rotation_shim_controller/1.1.7-3.tar.gz";
    name = "1.1.7-3.tar.gz";
    sha256 = "763ccca607ff9beccb0cd6eb5156a3c789eca52be394e5b12391c73f7781cf60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav2-controller nav2-regulated-pure-pursuit-controller ];
  propagatedBuildInputs = [ angles geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Rotation Shim Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
