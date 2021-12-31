
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_resources_prbt_ikfast_manipulator_plugin/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "20923688bf56f3b80988d6b988b74e8e1aaceb15c67c713ad57a29fd5b48a0a6";
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
