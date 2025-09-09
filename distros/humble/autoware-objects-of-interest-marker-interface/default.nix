
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, autoware-perception-msgs, autoware-utils-geometry, autoware-utils-math, autoware-utils-visualization, geometry-msgs, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-objects-of-interest-marker-interface";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_objects_of_interest_marker_interface/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ddada2a5ddb3c09f73a850f7165a38a429bc100f1796194236b062cd379e65e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-utils-geometry autoware-utils-math autoware-utils-visualization geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_objects_of_interest_marker_interface package";
    license = with lib.licenses; [ asl20 ];
  };
}
