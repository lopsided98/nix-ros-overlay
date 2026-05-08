
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-utils-geometry, autoware-utils-math, autoware-utils-visualization, geometry-msgs, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-objects-of-interest-marker-interface";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_objects_of_interest_marker_interface/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "7dc5d95c9f5b0b5d60e778bc37d68131186856d6ee85fd11cc61044a20b25e26";
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
