
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cv-bridge, geometry-msgs, image-geometry, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, pcl, pcl-conversions, python3Packages, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-image-view2";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/image_view2/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "be87bd679cd16f789f18a8d7617b9c96b1f290c5bfd5907953f6d56349e947fc";
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
