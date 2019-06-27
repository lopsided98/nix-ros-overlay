
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-quaternion-operation";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/kinetic/quaternion_operation/0.0.3-1.tar.gz;
    sha256 = "ac12e571a21a60004fa3980d40e41f791145dee8454d8d85143e156c3643bb44";
  };

  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
