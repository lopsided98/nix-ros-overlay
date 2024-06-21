
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_resources_prbt_ikfast_manipulator_plugin/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "a2557c6ad44874a7ecfdd8b25f225774202a7942eb2a70e61cad971d0f8836a8";
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
