
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, angles, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-magnetic-model";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/magnetic_model/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "2e8da41a16f55bae1f970de651689f1be28253e356442d0448a7d06fe3b7f870";
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
