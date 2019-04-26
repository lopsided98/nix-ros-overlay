
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-quaternion-operation";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/kinetic/quaternion_operation/0.0.1-1.tar.gz;
    sha256 = "4b99c612235901144550ff53d671a970246b4ed638c8b631faf501bd6548ecb8";
  };

  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    #license = lib.licenses.Aoache v2;
  };
}
