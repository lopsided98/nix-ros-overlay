
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, fmt, generate-parameter-library, moveit-core, moveit-resources-panda-moveit-config, pluginlib, range-v3, rclcpp, rsl, tf2-geometry-msgs, tf2-kdl, tl-expected }:
buildRosPackage {
  pname = "ros-iron-pick-ik";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pick_ik-release/archive/release/iron/pick_ik/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "52fd269767e79d6fbaef41dbe87ad823cc7560f36a99ff7dd5315f0b600028fd";
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
