
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pal-statistics-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-pal-carbon-collector";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/noetic/pal_carbon_collector/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e6f714ba9e78abea0511351d1a73f958ef34cab70026ad1476bc01ca448ecd27";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pal-statistics-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node that collects statistics from topics and sends them to carbon'';
    license = with lib.licenses; [ mit ];
  };
}
