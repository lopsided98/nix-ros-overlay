
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, launch-ros, nav-msgs, pcl-conversions, pcl-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros-environment, ros2launch, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-inuros2";
  version = "2.10.14-r15";

  src = fetchurl {
    url = "https://bitbucket.org/inuitive/inuros2-release/get/release/humble/inuros2/2.10.14-15.tar.gz";
    name = "2.10.14-15.tar.gz";
    sha256 = "d0dff00a7bac8973e5f47c2b2aef99bd81957bac0eae4bb2c7aceba4c24e2d16";
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
