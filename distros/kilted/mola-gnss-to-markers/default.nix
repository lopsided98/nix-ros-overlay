
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libobs, mrpt-nav-interfaces, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-mola-gnss-to-markers";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_gnss_to_markers-release/archive/release/kilted/mola_gnss_to_markers/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "b9331881ccfc2f7ea2b9fd526f0ab90a1eb40d2512bc89554a1c6b6b684ded53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-libobs mrpt-nav-interfaces rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Takes GNSS (GPS) readings, a MOLA georeferenced map, and publishes markers to visualize the datums as ellipsoids on the map";
    license = with lib.licenses; [ bsd3 ];
  };
}
