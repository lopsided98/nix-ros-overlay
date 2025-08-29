
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, librealsense2, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-realsense-interface";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_realsense_interface/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "8521a142e827fe747a0887ab79e6d87a17ff99c9bc8c247ebde4e03bd1f785a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs librealsense2 nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Intel Realsense cameras driver";
    license = with lib.licenses; [ bsd3 ];
  };
}
