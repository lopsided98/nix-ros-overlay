
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, angles, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-magnetic-model";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/jazzy/magnetic_model/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "fcf22b8e812070016e66f778a50ef8e6819267947687dd7019fd72b5fab15025";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest cras-lint ];
  propagatedBuildInputs = [ angles cras-cpp-common geographiclib geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "World Magnetic Model ROS API.";
    license = with lib.licenses; [ bsd3 publicDomain ];
  };
}
