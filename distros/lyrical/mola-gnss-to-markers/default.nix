
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-nav-interfaces, mrpt-topography, rclcpp, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mola-gnss-to-markers";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_gnss_to_markers-release/archive/release/lyrical/mola_gnss_to_markers/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "1c0c64efc9d02dff49aae8a3b5e57cad8cedc4e25141150ddea05c7f574ac54b";
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
