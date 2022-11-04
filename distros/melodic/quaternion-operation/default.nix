
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-quaternion-operation";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/melodic/quaternion_operation/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "db2cc70403a27df5a67db21c742c28728723a67b4c8f0ab51384e99d6692b32f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geometry-msgs roscpp rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
