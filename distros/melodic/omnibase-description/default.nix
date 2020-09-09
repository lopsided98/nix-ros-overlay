
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, geometry-msgs, joint-state-controller, joint-trajectory-controller, position-controllers, roscpp, rospy, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e55ccf7a1a3f39b46525ddbff0035b60a66b55db477d19c64b7c32e67b3812f0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ effort-controllers geometry-msgs joint-state-controller joint-trajectory-controller position-controllers roscpp rospy std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package constains the model files of the omnibase(omniwheeled robot)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
