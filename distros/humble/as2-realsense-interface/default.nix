
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, as2-core, as2-msgs, geometry-msgs, librealsense2, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-realsense-interface";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_realsense_interface/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "51297532f863f7183521c98914c20e543a99b5cd4d751fa11148db60a80a6819";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs librealsense2 nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Intel Realsense cameras driver'';
    license = with lib.licenses; [ bsd3 ];
  };
}
