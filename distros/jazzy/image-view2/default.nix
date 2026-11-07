
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, geometry-msgs, image-geometry, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, pcl, pcl-conversions, python3Packages, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-image-view2";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/image_view2/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "82655124d4f0aadc0b8a8d8cbe1d1e6a44f336fdf03017d35bc6fc43bbc28c8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake python3Packages.numpy python3Packages.scipy ];
  propagatedBuildInputs = [ boost cv-bridge geometry-msgs image-geometry image-transport jsk-ros1-ros2-compat message-filters pcl pcl-conversions rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ros-environment rosidl-default-generators ];

  meta = {
    description = "A simple viewer for ROS image topics with draw-on features";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
