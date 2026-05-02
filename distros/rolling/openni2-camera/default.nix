
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, camera-info-manager, depth-image-proc, image-transport, openni2, pkg-config, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-openni2-camera";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/openni2_camera-release/archive/release/rolling/openni2_camera/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "5cbba4d8b380b7a075fe8b7c048d3999d0d1bea5192f34da912e7e8a31ceccdb";
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
