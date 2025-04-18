
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depth-obstacle-detect-ros-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depth_obstacle_detect_ros-release/archive/release/jazzy/depth_obstacle_detect_ros_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "0eedd5929013c4b33a237f524186072c4ac0ecd8af85d3b40198dc0d9b6c5e04";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "A message package for depth_obstacle_detect_ros package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
