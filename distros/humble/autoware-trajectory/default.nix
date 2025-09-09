
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, geometry-msgs, lanelet2-core, pybind11-vendor, python-cmake-module, python3, python3Packages, range-v3, rclcpp, tf2, tf2-geometry-msgs, tl-expected }:
buildRosPackage {
  pname = "ros-humble-autoware-trajectory";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_trajectory/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0a308138ab33351dae10feb6fe6135a55e7ad8952eaae196a961544f2101ecd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common autoware-motion-utils autoware-pyplot autoware-test-utils autoware-utils-geometry pybind11-vendor python3 python3Packages.matplotlib range-v3 ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-lanelet2-utils autoware-planning-msgs autoware-utils-geometry geometry-msgs lanelet2-core rclcpp tf2 tf2-geometry-msgs tl-expected ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];

  meta = {
    description = "The autoware_trajectory package";
    license = with lib.licenses; [ asl20 ];
  };
}
