
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-audibot-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/melodic/audibot_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "82109a5c1507f56a4ebdf56aa3c731973abdad68c2539ae365300f5f68229325";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
