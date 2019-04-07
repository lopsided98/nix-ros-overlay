
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, criutils, catkin, pythonPackages, rostest, message-generation, baldor, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-handeye";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/crigroup/handeye-release/archive/release/kinetic/handeye/0.1.1-0.tar.gz;
    sha256 = "fa94544f3376bdc42885751c94ebfc40e9fe895b70bcbf141708cbb5b6fb9847";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ criutils pythonPackages.enum34 pythonPackages.numpy pythonPackages.scipy baldor message-runtime std-msgs pythonPackages.matplotlib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
