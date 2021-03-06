
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, diagnostic-updater, eigen, geometry-msgs, image-transport, launch-ros, nav-msgs, opencv3, rclcpp, rclcpp-components, realsense2-camera-msgs, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense2-camera";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/realsense2_camera/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "7ebb01ce220b9af81dd8592eb0207891fc000249921c0d455aa677a6fbf69d04";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common opencv3 ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge diagnostic-updater eigen geometry-msgs image-transport launch-ros nav-msgs rclcpp rclcpp-components realsense2-camera-msgs sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel SR300, D400 and L500 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
