
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-utils-geometry, autoware-utils-math, autoware-utils-visualization, geometry-msgs, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-objects-of-interest-marker-interface";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_objects_of_interest_marker_interface/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "34c59aa1597806ec75cff24c32d1331cfa8e69e908694fdcfee742624dfc20fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-utils-geometry autoware-utils-math autoware-utils-visualization geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_objects_of_interest_marker_interface package";
    license = with lib.licenses; [ asl20 ];
  };
}
