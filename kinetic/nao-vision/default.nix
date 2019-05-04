
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, nao-interaction-msgs, rospy, std-msgs, roslaunch, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nao-vision";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/ros-naoqi/nao_interaction-release/archive/release/kinetic/nao_vision/0.1.5-0.tar.gz;
    sha256 = "35227f5f2a3c4efd567378bf3929386a04a6f9a3660a6a1ec4f003c4df9e3eca";
  };

  propagatedBuildInputs = [ std-srvs nao-interaction-msgs rospy std-msgs roslaunch geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for the Nao robot, providing access to NAOqi vision proxies'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
