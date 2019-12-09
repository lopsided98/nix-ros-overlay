
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-melodic-fetch-description";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_description/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "3549d0508da99e8e906159816f711a15e035697ad013c1fcb13cbb767692dd14";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF for Fetch Robot.'';
    license = with lib.licenses; [ "CC-BY-SA-3.0" ];
  };
}
