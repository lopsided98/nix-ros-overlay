
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-quadrotor-dynamics-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_quadrotor_dynamics_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "ca09c63d00ed4e156f0d59ef8c96f51bd799a5085cabe2229f5a783b9336f1cd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quadrotor dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
