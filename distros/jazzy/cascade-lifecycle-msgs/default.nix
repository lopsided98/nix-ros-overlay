
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-cascade-lifecycle-msgs";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/jazzy/cascade_lifecycle_msgs/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "a7fef314eed2da0a899641e91be0cbd065ab6e9ce30e0184e5606dc57cfa2673";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for rclcpp_cascade_lifecycle package";
    license = with lib.licenses; [ asl20 ];
  };
}
