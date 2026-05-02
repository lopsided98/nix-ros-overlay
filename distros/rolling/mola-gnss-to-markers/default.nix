
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libobs, mrpt-nav-interfaces, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-mola-gnss-to-markers";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_gnss_to_markers-release/archive/release/rolling/mola_gnss_to_markers/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "3b7c7fd61c2fccc13e38e3062a6a9aa5fe81b0ae2febeec38843899333dbac93";
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
