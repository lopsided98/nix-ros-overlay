
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-msgs";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_msgs/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "19873e38f5896e137413f2d81acd5a7000c6015ae87701f6a0699276923d5d20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geographic-msgs geometry-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages, services and action files for the AS2 stack'';
    license = with lib.licenses; [ bsd3 ];
  };
}
