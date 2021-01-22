
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nao-interaction-msgs, roslaunch, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-nao-vision";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_interaction-release/archive/release/kinetic/nao_vision/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "35227f5f2a3c4efd567378bf3929386a04a6f9a3660a6a1ec4f003c4df9e3eca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nao-interaction-msgs roslaunch rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for the Nao robot, providing access to NAOqi vision proxies'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
