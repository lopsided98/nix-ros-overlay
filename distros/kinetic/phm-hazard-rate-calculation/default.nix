
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phm-hazard-rate-calculation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/phm_tools-release/archive/release/kinetic/phm_hazard_rate_calculation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "029c5764d99bd633e0f576930d755c3b89f8f67cc1855647c295ca75e76837fd";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phm_hazard_rate_calculation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
