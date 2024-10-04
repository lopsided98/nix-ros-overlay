
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-msgs";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_ros_msgs/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "db49fb576ed184f8fbf84e7498f850b5fbab8ebd89ccbc6c1d5838f1948fd463";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to keep interface independent of the driver";
    license = with lib.licenses; [ mit ];
  };
}
