
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-msgs";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_msgs/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "d50374751703b58dfb7b72da67f3f24b70398dc78dbabb99ce78c25af904a424";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geographic-msgs geometry-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages, services and action files for the AS2 stack";
    license = with lib.licenses; [ bsd3 ];
  };
}
