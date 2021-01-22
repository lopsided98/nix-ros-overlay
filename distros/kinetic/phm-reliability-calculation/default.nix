
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phm-reliability-calculation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/phm_tools-release/archive/release/kinetic/phm_reliability_calculation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8e2c48684f357b1d9596850da4bc629889a6bdec8de884ccd6ee923317924d4b";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phm_reliability_calculation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
