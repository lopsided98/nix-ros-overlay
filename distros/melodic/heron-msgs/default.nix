
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-heron-msgs";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/melodic/heron_msgs/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "2933e0b40e335841c756ee738d66fd9ab2e52cbfb21f105495e721d155773500";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides standard messages specific to Heron, especially for 
    the microcontroller's rosserial interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
