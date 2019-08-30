
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-footprint-observer";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_footprint_observer/0.8.0-1.tar.gz;
    sha256 = "e4bb923bb34919eb110cf91ee9c5312ee3bd9fca1e79f1c995baa33c00e27584";
  };

  buildInputs = [ boost roscpp message-generation std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ boost roscpp message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    license = with lib.licenses; [ asl20 ];
  };
}
