
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ibeo-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/ibeo_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "d7a7ce5b115b598b1dcf4d4ac30d909de6db7e5577a770410d9629a0fe414f13";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for Ibeo sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
