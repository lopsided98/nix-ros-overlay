
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-smacc-msgs";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/smacc-release/archive/release/melodic/smacc_msgs/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "47e7989725595f9700fe4ca26f004ddfb1874f6cf2c281d665751343179a4ea6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smacc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
