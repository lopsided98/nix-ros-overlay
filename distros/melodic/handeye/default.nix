
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, pythonPackages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-handeye";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/crigroup/handeye-release/archive/release/melodic/handeye/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "63c728c534746bdf434c25d972de02ad713dda6dcb45463c1688c2ec3cd704e4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ baldor criutils geometry-msgs message-runtime pythonPackages.enum34 pythonPackages.matplotlib pythonPackages.numpy pythonPackages.scipy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
