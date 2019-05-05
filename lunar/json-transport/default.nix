
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, pythonPackages, json-msgs, rostest, roscpp }:
buildRosPackage {
  pname = "ros-lunar-json-transport";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/locusrobotics/json_transport-release/archive/release/lunar/json_transport/0.0.1-0.tar.gz;
    sha256 = "f520d6342ecdbe111e4ff37698577a2bb7dd5ce7fe13b5b2fb37f7b61b23ab96";
  };

  buildInputs = [ json-msgs roscpp ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ json-msgs roscpp pythonPackages.msgpack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''JSON transport for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
