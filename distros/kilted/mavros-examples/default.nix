
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, eigen3-cmake-module, geometry-msgs, mavros, mavros-msgs, rclpy, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-mavros-examples";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/kilted/mavros_examples/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "e6634bbb1abb2d015c9ee876cd8e9c2962cda8aaf70c19052494bb2816747420";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen3-cmake-module geometry-msgs mavros mavros-msgs rclpy sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = "Example scripts demonstrating MAVROS usage";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
