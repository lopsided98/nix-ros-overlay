
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-description, xacro, urdf, urdfdom, catkin, turtlebot-description, rostest }:
buildRosPackage {
  pname = "ros-kinetic-openni-description";
  version = "1.11.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni_camera-release/archive/release/kinetic/openni_description/1.11.0-0.tar.gz";
    name = "1.11.0-0.tar.gz";
    sha256 = "c821b2f381bb2e4ef1510e20ec138392f182c75e6a1d262334dc429f74b41979";
  };

  buildType = "catkin";
  checkInputs = [ turtlebot-description kobuki-description urdfdom rostest ];
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model files of OpenNI device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
