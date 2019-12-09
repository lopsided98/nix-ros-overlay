
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, urdfdom, catkin, rostest }:
buildRosPackage {
  pname = "ros-melodic-openni-description";
  version = "1.11.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni_camera-release/archive/release/melodic/openni_description/1.11.1-0.tar.gz";
    name = "1.11.1-0.tar.gz";
    sha256 = "709e253ea9d2ba4d1c81fe758da31e8359a8e00f4e0105405f37a6e68e011dc8";
  };

  buildType = "catkin";
  checkInputs = [ urdfdom rostest ];
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model files of OpenNI device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
