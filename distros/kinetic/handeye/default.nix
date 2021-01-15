
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, pythonPackages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-handeye";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/crigroup/handeye-release/archive/release/kinetic/handeye/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "fa94544f3376bdc42885751c94ebfc40e9fe895b70bcbf141708cbb5b6fb9847";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ baldor criutils geometry-msgs message-runtime pythonPackages.enum34 pythonPackages.matplotlib pythonPackages.numpy pythonPackages.scipy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
