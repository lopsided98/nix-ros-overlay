
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, atf-core, atf-test-tools, catkin, rospy, rostest, rostopic, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-atf-test";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf_test/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3b9a53fc47b1457153263535c94e33a470110f804285275df0f43ded683807ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ atf-core rostest ];
  propagatedBuildInputs = [ atf-core atf-test-tools rospy rostopic tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example test configuration to verifying the correct behaviour of the ATF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
