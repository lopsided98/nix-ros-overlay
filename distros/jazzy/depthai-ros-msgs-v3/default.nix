
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-ros-msgs-v3";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_ros_msgs_v3/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "f8c837f7b7a63562b5be6a1f419f0692e7766ea2861efdf688b2823816c2d139";
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
