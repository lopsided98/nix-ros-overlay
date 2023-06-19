
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roscpp, rospy, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-client";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/tf2_client/-/archive/release/melodic/tf2_client/1.0.0-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "a7ddb4097e87282c70d648db2ef5827a30c40a5e88669664fa29f211b9a5526c";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ roscpp rospy tf2 tf2-ros ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Configurable tf2 client wrapper using local or remote buffer.'';
    license = with lib.licenses; [ mit ];
  };
}
