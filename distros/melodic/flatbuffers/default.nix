
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-flatbuffers";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/flatbuffers-release/archive/release/melodic/flatbuffers/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "5795283a62da224d9cf76e21ea581f48ce9e1bc37be751aaf547cfbba77a1bf8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google flatbuffers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
