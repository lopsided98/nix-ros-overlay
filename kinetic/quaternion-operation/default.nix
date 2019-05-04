
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-quaternion-operation";
  version = "0.0.1-r2";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/kinetic/quaternion_operation/0.0.1-2.tar.gz;
    sha256 = "7d9cbf3fda015341b62b80b0a2a3700294cd7a42534c5d5708c9d0146b8dea6e";
  };

  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ "Aoache v2" ];
  };
}
