
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-foxy-eigen-stl-containers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/foxy/eigen_stl_containers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5c00e7ae634ca8497711010a991e817f42e0ae75a244101e1defb177662e23cd";
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
