
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-footprint-observer";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_footprint_observer/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "b190f7141097e5d3c62622eb0026e8acb0dc0dbb7f96d030d073399a48464458";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    license = with lib.licenses; [ asl20 ];
  };
}
