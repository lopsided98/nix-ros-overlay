
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-quaternion-operation";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/kinetic/quaternion_operation/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "fe31ff9daa48a1b1549902cc7d2ef5c1321fbae73a0a70e83c2f6deceab07b41";
  };

  buildType = "catkin";
  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
