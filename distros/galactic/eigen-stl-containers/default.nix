
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-galactic-eigen-stl-containers";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/galactic/eigen_stl_containers/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "a3e968bfce49088ed3a92563034532a35f65b0bb0a379c6cf44ef4da54cfb359";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
