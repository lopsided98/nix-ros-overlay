
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-fetch-description";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_description/0.8.1-0.tar.gz;
    sha256 = "5cb7bb5e9f9f1eefc1f99d5c5375ebbeef60d10d62ed7d02478be238d9969087";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF for Fetch Robot.'';
    #license = lib.licenses.CreativeCommons-Attribution-NonCommercial-NoDerivatives-4.0;
  };
}
