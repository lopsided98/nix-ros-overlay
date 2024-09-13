
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, autoware-map-msgs, autoware-planning-msgs, autoware-utils, geographiclib, geometry-msgs, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, lanelet2-validation, pugixml, range-v3, rclcpp, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-extension";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_lanelet2_extension-release/archive/release/humble/autoware_lanelet2_extension/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "d5bbdf8444f8b20199521cf9609e5b4c9a01a7964175480161409e7b0842e9a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ autoware-map-msgs autoware-planning-msgs autoware-utils geographiclib geometry-msgs lanelet2-core lanelet2-io lanelet2-maps lanelet2-projection lanelet2-routing lanelet2-traffic-rules lanelet2-validation pugixml range-v3 rclcpp tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_extension package contains libraries to handle Lanelet2 format data.";
    license = with lib.licenses; [ asl20 ];
  };
}
