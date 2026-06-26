
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-humble-pick-ik";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/humble/pick_ik/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "0ba99243d3157af6baa2e64a67cd41c04fa10d31b0d7c0bc6a91010ae7121dcc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2-geometry-msgs tf2-kdl tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Inverse Kinematics solver for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
