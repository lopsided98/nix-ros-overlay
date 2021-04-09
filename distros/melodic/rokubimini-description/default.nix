
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-description";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_description/0.5.9-1/bota_driver-release-release-melodic-rokubimini_description-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_description-0.5.9-1.tar.gz";
    sha256 = "123c4e83ffe29893dfa08fc0c658d7c0a8dc58cf4afaf559f5cd289c2e9ba9d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
