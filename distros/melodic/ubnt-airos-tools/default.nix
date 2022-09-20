
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ubnt-airos-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/ubnt_airos_tools-release/archive/release/melodic/ubnt_airos_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "93160bad92af03db3438a1e00b4d3bd41305408b221400eb3c2193690c249369";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime pythonPackages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ubiquiti AirOS tools for extracting AP information to ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
