
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-cmake";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control_cmake-release/archive/release/rolling/ros2_control_cmake/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d443caaa56f6b372fea892c1fd96d19aa87bcbe44fa41b61dd08eef31e1ed810";
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
