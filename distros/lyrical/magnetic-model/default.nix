
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, angles, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-magnetic-model";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/lyrical/magnetic_model/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "84977dd75bfab784f1d9d3376ba9613c2d6ff38148d430fd9cac00d6627f6d9e";
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
