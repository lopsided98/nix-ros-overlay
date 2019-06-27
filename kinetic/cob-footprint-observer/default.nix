
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-footprint-observer";
  version = "0.7.6-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_footprint_observer/0.7.6-1.tar.gz;
    sha256 = "472fcfbdad62f5a3eb70e94d3b3f5d7c0002bc7a4203a420b649e63eac13201b";
  };

  buildInputs = [ boost roscpp message-generation std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ boost roscpp message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    license = with lib.licenses; [ asl20 ];
  };
}
