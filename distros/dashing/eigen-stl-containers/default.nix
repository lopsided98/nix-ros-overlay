
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-dashing-eigen-stl-containers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/dashing/eigen_stl_containers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "374607607d568c3f42e974cc96c30412bacaa8523dd46b5131082a08ff724f9a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
