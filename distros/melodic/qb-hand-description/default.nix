
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-description";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_description/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "f2a968984e49a8b094bec8b0da400ec63489182f830b705409f6b28b64d86bf2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
