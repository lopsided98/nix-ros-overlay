
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, backward-ros, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-msgs";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_msgs/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "bb642e9e7644140425e9cb77cbb1083cbeda104906f7cc020d95d778a1f7a1c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs backward-ros builtin-interfaces geographic-msgs geometry-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and service files for the Nav2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
