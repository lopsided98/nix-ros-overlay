
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, camera-info-manager, depth-image-proc, image-transport, openni2, pkg-config, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-openni2-camera";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/openni2_camera-release/archive/release/iron/openni2_camera/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "3a690eff92c59717928cb706a70426f8b3ba6052865b32dce58abf6923e721c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces camera-info-manager depth-image-proc image-transport openni2 rclcpp rclcpp-components rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Drivers for the Asus Xtion and Primesense Devices. For using a kinect
  with ROS, try the <a href=\"http://wiki.ros.org/freenect_stack\">freenect stack</a>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
