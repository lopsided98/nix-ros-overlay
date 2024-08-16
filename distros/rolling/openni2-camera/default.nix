
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, camera-info-manager, depth-image-proc, image-transport, openni2, pkg-config, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-openni2-camera";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/openni2_camera-release/archive/release/rolling/openni2_camera/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "fa4d8989a0eb5cbb05bd953f97a9c91c830c95bda72132232d4fcc54eb37e463";
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
