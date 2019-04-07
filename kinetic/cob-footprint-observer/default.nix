
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-footprint-observer";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_footprint_observer/0.7.4-0.tar.gz;
    sha256 = "f59db47960bc5a7cb164ef1e01818fbc8411b573788674352faf2a12e39af8de";
  };

  buildInputs = [ message-generation boost geometry-msgs std-msgs tf roscpp ];
  propagatedBuildInputs = [ boost message-runtime geometry-msgs std-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    #license = lib.licenses.Apache 2.0;
  };
}
