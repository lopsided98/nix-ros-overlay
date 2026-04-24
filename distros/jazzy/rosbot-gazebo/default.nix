
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_husarion_gz_worlds, _unresolved_tf_namespace_bridge, ament-cmake, ament-cmake-pytest, geometry-msgs, gz-ros2-control, laser-filters, launch, launch-pytest, launch-ros, nav-msgs, python3Packages, rclpy, ros-gz-bridge, ros-gz-sim, rosbot-controller, rosbot-joy, rosbot-localization, rosbot-utils, rviz2, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-gazebo";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_gazebo/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e7a1a4cb8db24115abee2a2a41a26dc28c345aee28e8aefd0cf85bb88842b8e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest geometry-msgs launch launch-pytest launch-ros nav-msgs python3Packages.pytest rclpy sensor-msgs ];
  propagatedBuildInputs = [ _unresolved_husarion_gz_worlds _unresolved_tf_namespace_bridge gz-ros2-control laser-filters launch launch-ros ros-gz-bridge ros-gz-sim rosbot-controller rosbot-joy rosbot-localization rosbot-utils rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
