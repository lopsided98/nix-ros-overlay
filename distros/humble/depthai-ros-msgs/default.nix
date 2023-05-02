
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-msgs";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_ros_msgs/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "65ca33b2f784d2b64ce1e3832610d5efbc8b1d91dc25ea91aa98d9f36b0ff53c";
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
