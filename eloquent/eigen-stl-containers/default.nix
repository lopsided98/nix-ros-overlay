
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-eigen-stl-containers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen_stl_containers-release/archive/release/eloquent/eigen_stl_containers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d051e69abe8e3187adcb4e79925dc9a1b098e108b91dba5f76433066b54e0e77";
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
