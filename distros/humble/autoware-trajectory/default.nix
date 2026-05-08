
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-cpp, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, fmt, geometry-msgs, lanelet2-core, pybind11-vendor, python-cmake-module, python3, python3Packages, range-v3, rclcpp, tf2, tf2-geometry-msgs, tl-expected, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-trajectory";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_trajectory/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "7d72b2a38fca1952dbfc04e6bbce5e22b971a648d54d3f82339cd7fd522eb216";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];
  checkInputs = [ ament-index-cpp autoware-lint-common autoware-motion-utils autoware-pyplot autoware-test-utils autoware-utils-geometry pybind11-vendor python3 python3Packages.matplotlib range-v3 yaml-cpp ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-lanelet2-utils autoware-planning-msgs autoware-utils-geometry fmt geometry-msgs lanelet2-core rclcpp tf2 tf2-geometry-msgs tl-expected ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];

  meta = {
    description = "The autoware_trajectory package";
    license = with lib.licenses; [ asl20 ];
  };
}
