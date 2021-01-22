
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-op3-gazebo";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-Common-release/archive/release/kinetic/op3_gazebo/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "107a4713710fa6075e5b5885a676d80393cd94e28b04efb7586be98138e041fb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
