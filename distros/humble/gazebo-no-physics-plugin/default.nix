
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gazebo-ros, rclcpp }:
buildRosPackage {
  pname = "ros-humble-gazebo-no-physics-plugin";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_no_physics_plugin-release/archive/release/humble/gazebo_no_physics_plugin/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "7765f7edf53b5c3a6a0425261b64d32f167fcee80b500786c2caf2db669589ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Disables physics in gazebo";
    license = with lib.licenses; [ asl20 ];
  };
}
