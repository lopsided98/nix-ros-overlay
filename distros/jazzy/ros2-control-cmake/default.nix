
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-ros2-control-cmake";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control_cmake-release/archive/release/jazzy/ros2_control_cmake/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "76eaef4652e310794e534ce5344dce5ebcc563be0883818db74321edf264501d";
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
