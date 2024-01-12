
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-noetic-openni-description";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni_camera-release/archive/release/noetic/openni_description/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "6cddd77bc3e372d26cdd86c3b17b102b8c061c77f525a5c4c06de907754a27ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest urdfdom ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model files of OpenNI device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
