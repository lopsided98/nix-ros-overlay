
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phm-start";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/phm_tools-release/archive/release/kinetic/phm_start/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d72de97585bbc5a4ee88b1fa3c4f4bfc29b87baf9861c1ef1d7e91217e717d62";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phm_start package'';
    license = with lib.licenses; [ asl20 ];
  };
}
