
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-omnibase-description";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_description/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3bc6477a84b61dbbb75d7bbd386fc5d468ea4ee220c572e6a02521e3987622d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package constains the model files of the omnibase(omniwheeled robot)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
