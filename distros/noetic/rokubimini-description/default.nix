
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-description";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_description/0.6.0-3/bota_driver-release-release-noetic-rokubimini_description-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_description-0.6.0-3.tar.gz";
    sha256 = "da529a6ebdaee1693d151b3b60566d2cd69a5fbfdd0bc76c4c089d5a11acee34";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
