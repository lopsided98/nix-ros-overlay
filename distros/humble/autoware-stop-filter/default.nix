
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-lint-common, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2 }:
buildRosPackage {
  pname = "ros-humble-autoware-stop-filter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_stop_filter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "207647f67d2b87553792cf507179457266d5ba702be401dd23c410ab0cdd91d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs geometry-msgs nav-msgs rclcpp rclcpp-components tf2 ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The stop filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
