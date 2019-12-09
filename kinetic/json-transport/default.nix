
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, json-msgs, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-json-transport";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/json_transport-release/archive/release/kinetic/json_transport/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "733146cad3c7494745dd9d6cccbd19c34f7d1b2fe86d6db6c648fd97c04de720";
  };

  buildType = "catkin";
  buildInputs = [ json-msgs roscpp ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ pythonPackages.msgpack json-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON transport for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
