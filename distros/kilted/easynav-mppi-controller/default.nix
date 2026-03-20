
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, easynav-system, geometry-msgs, nav-msgs, pcl-ros, pluginlib, rclcpp-lifecycle, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-mppi-controller";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_mppi_controller/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "6bcdc86ce6a04ad316d804dfd663687df5bfc561c8aada2ffc7c508a621f609d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-system geometry-msgs nav-msgs pcl-ros pluginlib tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPPI Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
