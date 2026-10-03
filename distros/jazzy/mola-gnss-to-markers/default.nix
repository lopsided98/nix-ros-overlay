
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-nav-interfaces, mrpt-topography, rclcpp, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mola-gnss-to-markers";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_gnss_to_markers-release/archive/release/jazzy/mola_gnss_to_markers/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "cedcd5d0c0c8fb2cf1160b0e8f775eaee0faaaa680a0a7c27c6f6c1ca3ff3255";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-nav-interfaces mrpt-topography rclcpp sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Takes GNSS (GPS) readings, a MOLA georeferenced map, and publishes markers to visualize the datums as ellipsoids on the map";
    license = with lib.licenses; [ bsd3 ];
  };
}
