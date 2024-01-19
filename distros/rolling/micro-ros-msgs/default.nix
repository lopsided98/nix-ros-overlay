
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-micro-ros-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_msgs-release/archive/release/rolling/micro_ros_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "04fc3358393058854609b0fc1e8968e6af2f86b65ebb9e36eb67bd3c84c6e88a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Definitions for the ROS 2 msgs entities information used by micro-ROS to leverage its functionality to the same level as ROS 2, by means of a dedicated graph manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
