
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-gazebo }:
buildRosPackage {
  pname = "ros-melodic-husky-simulator";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_simulator/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "ab8ab8efcfa5a429a83407e9bad34e1fd34802c479e4d3462f502c1cc8db0efc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
