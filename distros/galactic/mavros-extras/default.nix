
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, angles, diagnostic-msgs, diagnostic-updater, eigen, eigen-stl-containers, eigen3-cmake-module, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros, mavros-msgs, message-filters, nav-msgs, pluginlib, rclcpp, rclcpp-components, rcpputils, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-mavros-extras";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/galactic/mavros_extras/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "af3e0eb35e31a74a15b5f8d9918615f5311ad5758add27934f8dc8008028489c";
  };

  buildType = "ament_cmake";
  buildInputs = [ angles ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater eigen eigen-stl-containers eigen3-cmake-module geographic-msgs geographiclib geometry-msgs libmavconn mavlink mavros mavros-msgs message-filters nav-msgs pluginlib rclcpp rclcpp-components rcpputils rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = ''Extra nodes and plugins for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
