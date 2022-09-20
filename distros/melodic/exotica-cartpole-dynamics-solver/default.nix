
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-cartpole-dynamics-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_cartpole_dynamics_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "70c082510ca9a1838c04f7de893251a0a510ba195d9078d2b1b9cfd9a8abae9f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ exotica-python ];
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartpole dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
