
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-cmake, assimp, boost, console-bridge-vendor, eigen, eigen-stl-containers, eigen3-cmake-module, geometry-msgs, octomap, pkg-config, qhull, random-numbers, rclcpp, resource-retriever, rosidl-default-generators, rosidl-default-runtime, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-geometric-shapes";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/geometric_shapes-release/archive/release/foxy/geometric_shapes/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6447ed798f309b35795cf9daf595f8219c9cd2ffcdb07622c8ddd4cb7882501d";
  };

  buildType = "ament_cmake";
  buildInputs = [ pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ assimp boost console-bridge-vendor eigen eigen-stl-containers eigen3-cmake-module geometry-msgs octomap qhull random-numbers rclcpp resource-retriever rosidl-default-runtime shape-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module rosidl-default-generators ];

  meta = {
    description = ''This package contains generic definitions of geometric shapes and bodies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
