
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, libGL, libGLU, opencv3, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-kinetic-homer-robbie-architecture";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_robbie_architecture/-/archive/release/kinetic/homer_robbie_architecture/1.0.2-3/homer_robbie_architecture-release-kinetic-homer_robbie_architecture-1.0.2-3.tar.gz";
    name = "homer_robbie_architecture-release-kinetic-homer_robbie_architecture-1.0.2-3.tar.gz";
    sha256 = "7907d6f5820b9edd8ecaadcb2cdf2b6fe29db77f260139d3f1203a0a2224dffa";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ boost libGL libGLU opencv3 roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''robbie_architecture'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
