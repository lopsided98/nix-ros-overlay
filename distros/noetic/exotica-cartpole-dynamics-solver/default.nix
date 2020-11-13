
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-cartpole-dynamics-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_cartpole_dynamics_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "a19d6c63cb7f91a8003f8bdae0f096f971c406bfe85c14c467922f32a71d9b6d";
  };

  buildType = "catkin";
  checkInputs = [ exotica-python ];
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartpole dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
