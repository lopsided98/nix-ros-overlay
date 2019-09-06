
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-airskin-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_airskin_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "86882acd5c73168422e7ed6be2d10f89d9c5f1bd07951be9479eaf10fa9a082d";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_airskin_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
