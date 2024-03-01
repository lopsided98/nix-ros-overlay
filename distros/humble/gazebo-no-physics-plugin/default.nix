
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gazebo-ros, rclcpp }:
buildRosPackage {
  pname = "ros-humble-gazebo-no-physics-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_no_physics_plugin-release/archive/release/humble/gazebo_no_physics_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3ebc897424e1655fc64a68c72131eb2370ac45645d8604012b174311b17bd840";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Disables physics in gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
