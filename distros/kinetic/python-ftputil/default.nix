
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip }:
buildRosPackage {
  pname = "ros-kinetic-python-ftputil";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/asmodehn/ftputil-rosrelease/archive/release/kinetic/python-ftputil/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "ea7134ed605ab490095d888680edee69e8c2dfc95bb36b9fc3b8f067eb5dfc37";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''a high-level FTP client library for Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
