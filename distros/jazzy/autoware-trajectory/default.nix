
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-cpp, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, fmt, geometry-msgs, lanelet2-core, pybind11-vendor, python-cmake-module, python3, python3Packages, range-v3, rclcpp, tf2, tf2-geometry-msgs, tl-expected, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-trajectory";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_trajectory/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "8ebd18270cf8a36ccb5d526b32732f6e6f309832c44725f373a544e42eb1723c";
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
