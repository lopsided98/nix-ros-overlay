
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-msgs";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_ros_msgs/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "6c00619908e8f834e74b3e53d2302602b8143b33c4726f564917cc93956531d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to keep interface independent of the driver'';
    license = with lib.licenses; [ mit ];
  };
}
