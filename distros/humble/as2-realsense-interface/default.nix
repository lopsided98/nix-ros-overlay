
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, as2-core, as2-msgs, geometry-msgs, librealsense2, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-realsense-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_realsense_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5731b98ee2984b70b796a0e3cb607b8f60fde3d1c6c4917331eec1e450bb541b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs librealsense2 nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Intel Realsense cameras driver'';
    license = with lib.licenses; [ bsd3 ];
  };
}
