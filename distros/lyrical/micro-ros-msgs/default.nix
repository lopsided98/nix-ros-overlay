
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-micro-ros-msgs";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_msgs-release/archive/release/lyrical/micro_ros_msgs/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "0b2e7c9b15cea5bf4caf1522532c12d22494eb33443c1fd40d0be0bd2c7986e0";
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
