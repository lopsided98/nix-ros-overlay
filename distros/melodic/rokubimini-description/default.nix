
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-description";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_description/0.6.0-3/bota_driver-release-release-melodic-rokubimini_description-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_description-0.6.0-3.tar.gz";
    sha256 = "0f49d319244e206be84c06269024f338f89c52f485a24b48434666540a8cf3b5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
