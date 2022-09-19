
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, pluginlib, rclcpp, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_resources_prbt_ikfast_manipulator_plugin/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "2c6847e0436f772789f0e274e54b4f19c52f136b0d73fd40d04fdf3818abb66b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tf2-eigen tf2-eigen-kdl ];
  propagatedBuildInputs = [ moveit-core pluginlib rclcpp tf2-geometry-msgs tf2-kdl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
