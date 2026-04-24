
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compass-msgs, diagnostic-msgs, eigen3-cmake-module, fusioncore-core, geometry-msgs, nav-msgs, proj, rclcpp, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-ros";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_ros/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4b49030b6f833a562b9caa94a92b9fc1e0083dd32b008f9bfc47c45cc4a83030";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ compass-msgs diagnostic-msgs eigen3-cmake-module fusioncore-core geometry-msgs nav-msgs proj rclcpp rclcpp-lifecycle sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "FusionCore ROS 2 Jazzy wrapper: sensor fusion node";
    license = with lib.licenses; [ asl20 ];
  };
}
