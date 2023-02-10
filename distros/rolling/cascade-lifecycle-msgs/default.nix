
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-cascade-lifecycle-msgs";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/cascade_lifecycle_msgs/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "9c8c123dbc8f52ba674db23b5c6ab88d5556e4cf34124f2a847f613d1c029a4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclcpp_cascade_lifecycle package'';
    license = with lib.licenses; [ asl20 ];
  };
}
