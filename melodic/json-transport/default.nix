
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, pythonPackages, json-msgs, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-json-transport";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/locusrobotics/json_transport-release/archive/release/melodic/json_transport/0.0.3-0.tar.gz;
    sha256 = "c7077ff6fff4119b0383218c2426ac4629ee02485af8e569920149031f791b2c";
  };

  buildInputs = [ json-msgs roscpp ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ json-msgs roscpp pythonPackages.msgpack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON transport for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
