
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-zed-description";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-description-release/archive/release/jazzy/zed_description/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "822c98db8df2a6665c5171472b0c6012f9a5d100b97824da4bce2ffa0a82d338";
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
