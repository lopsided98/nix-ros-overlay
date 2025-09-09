
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-msgs";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_msgs/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "4ce7936c8e073ffe939ad49fd77523e244bb8fe8ee55a5ae65ebaebd93df27ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geographic-msgs geometry-msgs nav-msgs rclcpp rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages, services and action files for the AS2 stack";
    license = with lib.licenses; [ bsd3 ];
  };
}
