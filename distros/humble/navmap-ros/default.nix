
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl, pcl-conversions, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-navmap-ros";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/humble/navmap_ros/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ed6f4f2f97252fa8a1dc91544b9ff3fbd346d6c4f492366b523bc87baa9cddef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs navmap-core navmap-ros-interfaces pcl pcl-conversions rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between navmap_core and ROS messages";
    license = with lib.licenses; [ asl20 ];
  };
}
