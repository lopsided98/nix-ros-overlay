
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, python3Packages, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-flexbe-testing";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_testing/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "a300f110c74aadf0a32ae149df4a3d0f1e9a20123e0cc31dad6a492a1c523c23";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ rosunit std-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy rostest ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
