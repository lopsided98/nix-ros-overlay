
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-fetch-description";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_description/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "687e90ba5a74c8f638c2141f710509056186288a9b58291c6cec54c017680347";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF for Fetch Robot.'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
