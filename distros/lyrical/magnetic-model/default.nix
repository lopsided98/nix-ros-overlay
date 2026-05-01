
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, angles, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-magnetic-model";
  version = "3.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/lyrical/magnetic_model/3.0.2-3.tar.gz";
    name = "3.0.2-3.tar.gz";
    sha256 = "3981f1076d42e479de4edce499cebf25ae78d48db6345047bba5ba830e3dcfbf";
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
