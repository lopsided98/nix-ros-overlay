
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-footprint-observer";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_footprint_observer/0.7.3-0.tar.gz;
    sha256 = "7a121b1cdf0eb0044a87243fae8957a2ecb9e7c159d6a233654b6408e8c3272c";
  };

  propagatedBuildInputs = [ boost message-runtime geometry-msgs std-msgs tf roscpp ];
  nativeBuildInputs = [ message-generation boost geometry-msgs std-msgs catkin tf roscpp ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    #license = lib.licenses.Apache 2.0;
  };
}
