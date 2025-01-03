
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-micro-ros-msgs";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_msgs-release/archive/release/jazzy/micro_ros_msgs/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "8b92fb212dc8e4e76dc71196b9656b3b1881f814492a26206ae80ad9846a8ec5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Definitions for the ROS 2 msgs entities information used by micro-ROS to leverage its functionality to the same level as ROS 2, by means of a dedicated graph manager";
    license = with lib.licenses; [ asl20 ];
  };
}
