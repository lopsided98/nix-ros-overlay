
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pal-statistics-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-pal-carbon-collector";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/melodic/pal_carbon_collector/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "f8b1a9f99ca84937c402791de83cca7525b73fec5cf35238d0f49dc6eba42f94";
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
