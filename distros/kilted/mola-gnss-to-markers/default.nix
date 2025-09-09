
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-libobs, mrpt-nav-interfaces, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-mola-gnss-to-markers";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_gnss_to_markers-release/archive/release/kilted/mola_gnss_to_markers/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "20d46d5e60e84dde8764379a1c64ce40aa4a75edbfbfce6c5604ef8ff42f5fad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mrpt-libobs mrpt-nav-interfaces rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Takes GNSS (GPS) readings, a MOLA georeferenced map, and publishes markers to visualize the datums as ellipsoids on the map";
    license = with lib.licenses; [ bsd3 ];
  };
}
