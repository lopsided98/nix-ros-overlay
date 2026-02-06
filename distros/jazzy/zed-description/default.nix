
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-zed-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-description-release/archive/release/jazzy/zed_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "85f8d47b3d134c48b492f5f7d391a28c664e87cb21d63e112277624da565ff1f";
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
