
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-cmake, assimp, boost, console-bridge-vendor, eigen, eigen-stl-containers, eigen3-cmake-module, fcl, geometry-msgs, pkg-config, qhull, random-numbers, rclcpp, resource-retriever, rosidl-default-generators, rosidl-default-runtime, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-geometric-shapes";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometric_shapes-release/archive/release/humble/geometric_shapes/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "52c4a7935e5ae30d15fcbd4cc880d962fef8cf0abf14af8682a6060bb46e35c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ assimp boost console-bridge-vendor eigen eigen-stl-containers eigen3-cmake-module fcl geometry-msgs qhull random-numbers rclcpp resource-retriever rosidl-default-runtime shape-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module rosidl-default-generators ];

  meta = {
    description = "This package contains generic definitions of geometric shapes and bodies.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
