
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_resources_prbt_ikfast_manipulator_plugin/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "6673796926709bc9a34d1669504fc743c59245e5a6ec918b6734352ef3c1e6f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tf2-eigen tf2-eigen-kdl ];
  propagatedBuildInputs = [ generate-parameter-library moveit-core pluginlib rclcpp tf2-geometry-msgs tf2-kdl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The prbt_ikfast_manipulator_plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
