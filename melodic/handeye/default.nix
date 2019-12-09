
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, baldor, pythonPackages, criutils, catkin, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-melodic-handeye";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/crigroup/handeye-release/archive/release/melodic/handeye/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f403b5d7be7027acc714c76657bdf3b40beb68cb5cda8792c7224312bb9088f4";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs pythonPackages.matplotlib pythonPackages.enum34 pythonPackages.scipy std-msgs baldor criutils message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
