
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-micro-ros-msgs";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_msgs-release/archive/release/rolling/micro_ros_msgs/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "62cbbe8db62a12e4950b0d67fb2b567af2218b7659b61382cc046717b9fdeea4";
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
