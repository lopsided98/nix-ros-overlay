
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_resources_prbt_ikfast_manipulator_plugin/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "130ef6be164f203eb2a0d4856d9c6b7c456af2569dfc78c791cd521c86a3f284";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-eigen tf2-eigen-kdl ];
  propagatedBuildInputs = [ moveit-core pluginlib rclcpp tf2-geometry-msgs tf2-kdl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
