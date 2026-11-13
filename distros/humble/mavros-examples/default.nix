
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, eigen3-cmake-module, geometry-msgs, mavros, mavros-msgs, rclpy, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-mavros-examples";
  version = "2.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/humble/mavros_examples/2.17.0-1.tar.gz";
    name = "2.17.0-1.tar.gz";
    sha256 = "7346bb1ebcc5d4b1883b534d14419c6e054391551ae3ddbb9cbdf445986f927d";
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
