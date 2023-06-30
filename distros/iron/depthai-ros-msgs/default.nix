
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-iron-depthai-ros-msgs";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_ros_msgs/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "46b2fab39083631eef909bd302b7d360646466fad5fffbd045fed07109c3f5c3";
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
