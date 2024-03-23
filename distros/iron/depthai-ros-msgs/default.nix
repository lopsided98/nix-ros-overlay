
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-iron-depthai-ros-msgs";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_ros_msgs/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "04ea08dcebaacdba13983997942d2e70f22cddb23a42ec7b63b2715dc4459927";
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
