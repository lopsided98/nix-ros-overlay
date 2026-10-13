
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-zed-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-description-release/archive/release/rolling/zed_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "15dc593091751ff29feef5bc97ee26cf23c6551a5e59fe1eb6fec68dab483b83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains URDF and meshes to create models of Stereolabs ZED Cameras.";
    license = with lib.licenses; [ asl20 ];
  };
}
