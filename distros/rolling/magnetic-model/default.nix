
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, angles, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-magnetic-model";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/magnetic_model/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "d2411b2f8b11f06f093ac54746dd9af42e45cd9187f38a23b83f99e523927388";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest cras-lint ];
  propagatedBuildInputs = [ angles cras-cpp-common geographiclib geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "World Magnetic Model ROS API.";
    license = with lib.licenses; [ bsdOriginal publicDomain ];
  };
}
