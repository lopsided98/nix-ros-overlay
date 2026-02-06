
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-zed-description";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-description-release/archive/release/humble/zed_description/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "43dde245b642c49a8e0b60cb94eae7f05ebd001ae424a5abbc072068894edec1";
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
