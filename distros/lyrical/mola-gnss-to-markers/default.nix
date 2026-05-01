
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libobs, mrpt-nav-interfaces, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mola-gnss-to-markers";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_gnss_to_markers-release/archive/release/lyrical/mola_gnss_to_markers/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "60a47019170e8d6c4dfd14eef1bc1c6b975b9d54db2443554dfca9cb488e6bf5";
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
