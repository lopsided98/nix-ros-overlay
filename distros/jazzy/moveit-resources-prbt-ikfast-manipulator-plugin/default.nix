
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_resources_prbt_ikfast_manipulator_plugin/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "7edcad1314126def43b25d5563c4704327ba0109d0833238db541c2ea47d96ac";
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
