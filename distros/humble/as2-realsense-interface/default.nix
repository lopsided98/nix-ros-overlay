
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, as2-core, as2-msgs, geometry-msgs, librealsense2, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-realsense-interface";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_realsense_interface/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "7f4d1dee5fe75fbc8ca42d53534e834441f4467231e69a14ab4fcab4787810d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs librealsense2 nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Intel Realsense cameras driver";
    license = with lib.licenses; [ bsd3 ];
  };
}
