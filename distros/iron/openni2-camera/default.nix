
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, camera-info-manager, image-transport, openni2, pkg-config, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-openni2-camera";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/openni2_camera-release/archive/release/iron/openni2_camera/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "a08a50c8dc67b55acd0c7238fcaf23edfa93b3c17760e0fef9e1cd067798ceef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager image-transport openni2 rclcpp rclcpp-components rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href="http://wiki.ros.org/freenect_stack">freenect stack</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
