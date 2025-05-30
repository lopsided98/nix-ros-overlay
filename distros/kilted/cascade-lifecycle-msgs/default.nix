
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-cascade-lifecycle-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/kilted/cascade_lifecycle_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "1f71730f581d02a7fc2d2cb2d1b1c77b03a9326416eb07b8f811b12456124e76";
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
