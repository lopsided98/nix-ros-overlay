
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-description";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_description/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "238565902edb69c79a2cfd59a536f570c2fc1103cc8562d2d8dfea5ac3fad114";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
