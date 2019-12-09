
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake-modules, catkin, libGLU, tinyxml, libGL, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-homer-robbie-architecture";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_robbie_architecture/repository/archive.tar.gz?ref=release/kinetic/homer_robbie_architecture/1.0.2-3";
    name = "archive.tar.gz";
    sha256 = "46d28885ce35f865ff4408dc116e7f244723b584f60a0f36ff4f66564b294d23";
  };

  buildType = "catkin";
  buildInputs = [ boost cmake-modules libGLU roscpp tinyxml libGL opencv3 ];
  propagatedBuildInputs = [ boost libGLU roscpp tinyxml libGL opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''robbie_architecture'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
