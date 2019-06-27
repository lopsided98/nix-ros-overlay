
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-quaternion-operation";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/melodic/quaternion_operation/0.0.3-1.tar.gz;
    sha256 = "71f1f5d9106860e969083c37f11328737229b7e9c8c1254980817016f9f52348";
  };

  buildInputs = [ rostest roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ rostest roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
