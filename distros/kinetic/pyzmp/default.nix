
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-pyzmp";
  version = "0.0.17";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyzmp-rosrelease/archive/release/kinetic/pyzmp/0.0.17-0.tar.gz";
    name = "0.0.17-0.tar.gz";
    sha256 = "b43e3c1e5b1add19202f03f8fb8e87bb97de1518f8dced80d645775b847f7802";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ pythonPackages.pyzmq ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python Multiprocess Management Framework, based on ZeroMQ communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
