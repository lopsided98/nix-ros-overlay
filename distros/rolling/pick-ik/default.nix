
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-pick-ik";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/rolling/pick_ik/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6a6ac96cf14f9ccddff220ff9d93b931ead1de026b78ff7fd42673b09d1bdee6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt generate-parameter-library moveit-core pluginlib range-v3 rclcpp rsl tf2-geometry-msgs tf2-kdl tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Inverse Kinematics solver for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
