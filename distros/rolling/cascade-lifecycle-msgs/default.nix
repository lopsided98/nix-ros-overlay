
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-cascade-lifecycle-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/cascade_lifecycle_msgs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d160f54cd90181784ad831c308f48af57ea989f21c9a67cb35ee75565133bc0f";
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
