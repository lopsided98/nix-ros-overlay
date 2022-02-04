
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-sick-s300";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_sick_s300/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "3c56e17d4fcf9473d045ae51263f012391ba4dcf5dfc481f848a582b7644bd36";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost diagnostic-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick S300 laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
