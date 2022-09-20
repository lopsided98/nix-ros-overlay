
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-melodic-eigen-stl-containers";
  version = "0.1.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eigen_stl_containers-release/archive/release/melodic/eigen_stl_containers/0.1.8-0.tar.gz";
    name = "0.1.8-0.tar.gz";
    sha256 = "e10632b9c182ffc09170b5fc80bf0a0f3cb8ab1091c01b44953042ba71ad5843";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a set of typedef's that allow
  using Eigen datatypes in STL containers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
