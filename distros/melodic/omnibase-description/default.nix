
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, geometry-msgs, joint-state-controller, joint-trajectory-controller, position-controllers, roscpp, rospy, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-description";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_description/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "5d890cefc30e7016110f00ee5972a77ca231c53f928357c4ff2187d437f15dab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers geometry-msgs joint-state-controller joint-trajectory-controller position-controllers roscpp rospy std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package constains the model files of the omnibase(omniwheeled robot)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
