
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-cascade-lifecycle-msgs";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/cascade_lifecycle_msgs/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "71be824039c263e5c4e74acadcf5974958a65e857898b222405395c3d87ef74e";
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
