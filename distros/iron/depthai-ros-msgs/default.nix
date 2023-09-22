
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-iron-depthai-ros-msgs";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_ros_msgs/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "96cfde7fa509b424f68fafe04d103af1588dcb57e1b9bc03ae5dc0728f06ddde";
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
