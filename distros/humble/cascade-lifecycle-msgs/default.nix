
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-cascade-lifecycle-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/humble/cascade_lifecycle_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e6946ab8acf0dec40bf52ae822e86b19e7efbc1ba6f6e20220a40fe809920022";
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
