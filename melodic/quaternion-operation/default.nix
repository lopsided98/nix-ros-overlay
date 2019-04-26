
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-quaternion-operation";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/melodic/quaternion_operation/0.0.1-1.tar.gz;
    sha256 = "d99af54b505e133d0b01719a2d0ad08e7bb769218f5a200af6fda316e65678d5";
  };

  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    #license = lib.licenses.Aoache v2;
  };
}
