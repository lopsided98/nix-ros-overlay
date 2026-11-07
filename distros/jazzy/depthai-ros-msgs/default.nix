
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, ros-environment, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-msgs";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_ros_msgs/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "1cba51c9490f02b2457d9377ee33e5fb69e7dec27f257d41df093a5f10a94548";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to keep interface independent of the driver";
    license = with lib.licenses; [ mit ];
  };
}
