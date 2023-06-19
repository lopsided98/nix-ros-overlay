
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, as2-core, as2-msgs, geometry-msgs, librealsense2, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-realsense-interface";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_realsense_interface/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ce71f628ac319cd576c55726cfdb4c327924fc4efb7cff2b82de68c6c4a331be";
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
