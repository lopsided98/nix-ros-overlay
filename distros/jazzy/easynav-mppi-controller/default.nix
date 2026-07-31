
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, easynav-simple-common, easynav-system, geometry-msgs, nav-msgs, pcl-ros, pluginlib, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-mppi-controller";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_mppi_controller/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "45eb54b4355b0361c3c72a151c6bc7d294b415cb81b1a73c859d83a7a96a9ada";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors easynav-system geometry-msgs nav-msgs pcl-ros pluginlib tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPPI Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
