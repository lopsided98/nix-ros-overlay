
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, python3Packages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-handeye";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/crigroup/handeye-release/archive/release/noetic/handeye/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "e9bfb98b24529e1a17ee1da6241ec8f67b442438155b44afef74bfb647100fc0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ baldor criutils geometry-msgs message-runtime python3Packages.matplotlib python3Packages.numpy python3Packages.scipy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
