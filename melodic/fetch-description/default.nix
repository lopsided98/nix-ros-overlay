
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-fetch-description";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_description/0.8.0-0.tar.gz;
    sha256 = "294457fdfa978c7aea534269a5783a034da229e6cb362f228c943b3de2036d4d";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF for Fetch Robot.'';
    #license = lib.licenses.CreativeCommons-Attribution-NonCommercial-NoDerivatives-4.0;
  };
}
