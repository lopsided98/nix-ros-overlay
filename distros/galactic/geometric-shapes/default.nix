
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-cmake, assimp, boost, console-bridge-vendor, eigen, eigen-stl-containers, eigen3-cmake-module, geometry-msgs, octomap, pkg-config, qhull, random-numbers, rclcpp, resource-retriever, rosidl-default-generators, rosidl-default-runtime, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-geometric-shapes";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/geometric_shapes-release/archive/release/galactic/geometric_shapes/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "e7e2b87af7bd3a814701e20285053b142a8cfa91ac1c5393d5b0978c6b46346f";
  };

  buildType = "ament_cmake";
  buildInputs = [ pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ assimp boost console-bridge-vendor eigen eigen-stl-containers eigen3-cmake-module geometry-msgs octomap qhull random-numbers rclcpp resource-retriever rosidl-default-runtime shape-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module rosidl-default-generators ];

  meta = {
    description = ''This package contains generic definitions of geometric shapes and bodies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
