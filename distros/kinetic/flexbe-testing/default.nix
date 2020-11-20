
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-testing";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_testing/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "198e25d7f6c5657fcd1a55c4a284ba54b48ddafe0e57a905e57a4fcf5fb50d09";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosunit std-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
