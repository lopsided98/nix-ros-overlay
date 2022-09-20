
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, ompl }:
buildRosPackage {
  pname = "ros-melodic-exotica-ompl-control-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ompl_control_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "a62b78136c92e9db002785b9be5c3eeb1da0867063dc64233a009f36ccf45b91";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinodynamic Control Solvers from OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
