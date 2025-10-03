
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-ros2-control-cmake";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control_cmake-release/archive/release/kilted/ros2_control_cmake/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9a55e43b08cc37366628a73be3d66095ed3a73fee96f18d165dc82c44cc77e14";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides CMake macros used by the ros2_control framework";
    license = with lib.licenses; [ asl20 ];
  };
}
