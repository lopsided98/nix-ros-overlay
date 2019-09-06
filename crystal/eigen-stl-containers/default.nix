
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-crystal-eigen-stl-containers";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/crystal/eigen_stl_containers/1.0.0-0.tar.gz;
    sha256 = "dd870ca56fe118b51f00459340ffcf4cef968c1c6e27f8eab9326b9f02c95ee4";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
