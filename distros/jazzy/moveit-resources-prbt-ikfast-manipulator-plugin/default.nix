
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_resources_prbt_ikfast_manipulator_plugin/2.12.4-1.tar.gz";
    name = "2.12.4-1.tar.gz";
    sha256 = "dc6ba566f573ed2fced170908a677ca9b2ebced0efa16ebc69fd25240b94526a";
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
