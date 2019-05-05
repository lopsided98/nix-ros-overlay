
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-audibot-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = https://github.com/robustify/audibot-release/archive/release/melodic/audibot_description/0.1.0-1.tar.gz;
    sha256 = "d3ed9cf90813e8be82fbad03f60acce1ab3cfe878343f6855a7d8619674e5c13";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
