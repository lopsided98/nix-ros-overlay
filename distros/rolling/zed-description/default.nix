
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-zed-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-description-release/archive/release/rolling/zed_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "29e6e9ef839947297ad6231dd74746ac189af33bc8f286ef70e59732769fc2d1";
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
