
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, serial, dsr-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dsr-example-cpp";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_example_cpp/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "88ddffbe84c7e70c399dca817fdd10d1360fdb2689e6a6ffaa4c3fcc22357430";
  };

  buildType = "catkin";
  buildInputs = [ dsr-msgs std-msgs serial roscpp ];
  propagatedBuildInputs = [ dsr-msgs std-msgs serial roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_example C++ package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
