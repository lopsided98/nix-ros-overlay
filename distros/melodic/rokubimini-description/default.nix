
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-description";
  version = "0.5.0-r6";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_description/0.5.0-6";
    name = "archive.tar.gz";
    sha256 = "0318851a56293e60db8e9788febb11a2645a68304c8d692f1e781e1e76831044";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
