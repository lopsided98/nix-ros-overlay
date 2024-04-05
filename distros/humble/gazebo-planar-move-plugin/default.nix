
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, gazebo-dev, gazebo-ros, geometry-msgs, launch-testing-ament-cmake, nav-msgs, rclcpp, robot-state-publisher, ros2launch, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-gazebo-planar-move-plugin";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_planar_move_plugin-release/archive/release/humble/gazebo_planar_move_plugin/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d1fc256b8855ce80babf8725dd4a91e0bf48db7cd6eb2b167fa809ccd016e713";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake robot-state-publisher ros2launch ];
  propagatedBuildInputs = [ boost gazebo-dev gazebo-ros geometry-msgs nav-msgs rclcpp sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Planar move of objects in gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}
