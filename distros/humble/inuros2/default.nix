
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, launch-ros, nav-msgs, pcl-conversions, pcl-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros-environment, ros2launch, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-inuros2";
  version = "2.10.14-r17";

  src = fetchurl {
    url = "https://bitbucket.org/inuitive/inuros2-release/get/release/humble/inuros2/2.10.14-17.tar.gz";
    name = "2.10.14-17.tar.gz";
    sha256 = "4c241bfc0b674afc5cfb6ddbe6ba5213253c2c422a68f999266f5627159205ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge geometry-msgs image-transport launch-ros nav-msgs pcl-conversions pcl-msgs rclcpp rclcpp-components rclcpp-lifecycle ros2launch rosidl-default-runtime sensor-msgs std-msgs vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Inuitive image publisher";
    license = with lib.licenses; [ asl20 ];
  };
}
