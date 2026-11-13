
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, geometry-msgs, image-geometry, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, pcl, pcl-conversions, python3Packages, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-image-view2";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common-release/archive/release/rolling/image_view2/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "2f6f05334808e28c9f560b433905fcd5f06f5c0b6863361eb254b3a173dea29d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake python3Packages.numpy python3Packages.scipy ];
  propagatedBuildInputs = [ boost cv-bridge geometry-msgs image-geometry image-transport jsk-ros1-ros2-compat message-filters pcl pcl-conversions rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ros-environment rosidl-default-generators ];

  meta = {
    description = "A simple viewer for ROS image topics with draw-on features";
    license = with lib.licenses; [ bsd3 ];
  };
}
