
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, launch-ros, nav-msgs, pcl-conversions, pcl-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros-environment, ros2launch, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-inuros2";
  version = "2.10.15-r1";

  src = fetchurl {
    url = "https://bitbucket.org/inuitive/inuros2-release/get/release/humble/inuros2/2.10.15-1.tar.gz";
    name = "2.10.15-1.tar.gz";
    sha256 = "04f27beda515cdcdc554c05b22bde4f525ec6b4f9a08d185f5152e3eafb4fa5e";
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
