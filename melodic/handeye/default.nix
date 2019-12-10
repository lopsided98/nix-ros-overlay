
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, pythonPackages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-handeye";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/crigroup/handeye-release/archive/release/melodic/handeye/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f403b5d7be7027acc714c76657bdf3b40beb68cb5cda8792c7224312bb9088f4";
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
