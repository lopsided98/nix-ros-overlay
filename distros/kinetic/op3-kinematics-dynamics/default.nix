
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, robotis-math, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-kinematics-dynamics";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_kinematics_dynamics/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "a9e592483d32506bf257acbf47a3fc1eae9b474e38bb708efeacda11f63c5239";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen robotis-math roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_kinematics_dynamics package'';
    license = with lib.licenses; [ asl20 ];
  };
}
