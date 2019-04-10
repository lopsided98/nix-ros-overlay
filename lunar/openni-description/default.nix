
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdfdom, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-lunar-openni-description";
  version = "1.11.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni_camera-release/archive/release/lunar/openni_description/1.11.1-0.tar.gz;
    sha256 = "d9b97f2ab6f842a9e17b4130dd96c974c5c5f2f9781a2a11a58c73db0b2b33f2";
  };

  checkInputs = [ rostest urdfdom ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model files of OpenNI device.'';
    #license = lib.licenses.BSD;
  };
}
