
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, geometry-msgs, image-geometry, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, pcl, pcl-conversions, python3Packages, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-image-view2";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/image_view2/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "16d3666afabfd9b9ef2097a20ebf6f3710616be6cd10040d017f86641d00657c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake python3Packages.numpy python3Packages.scipy ];
  propagatedBuildInputs = [ boost cv-bridge geometry-msgs image-geometry image-transport jsk-ros1-ros2-compat message-filters pcl pcl-conversions rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A simple viewer for ROS image topics with draw-on features";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
