
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nao-interaction-msgs, std-msgs, std-srvs, catkin, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-nao-vision";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_interaction-release/archive/release/kinetic/nao_vision/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "35227f5f2a3c4efd567378bf3929386a04a6f9a3660a6a1ec4f003c4df9e3eca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nao-interaction-msgs std-msgs std-srvs rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for the Nao robot, providing access to NAOqi vision proxies'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
