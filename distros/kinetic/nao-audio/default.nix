
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nao-interaction-msgs, roslaunch, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-nao-audio";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_interaction-release/archive/release/kinetic/nao_audio/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "f1ef6881e66611729e72cb1562936c27ef5cfe8b4c0d2d412ff39582ed9da533";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nao-interaction-msgs roslaunch rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for the Nao robot, providing access to NAOqi audio proxies'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
