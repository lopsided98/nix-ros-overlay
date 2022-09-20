
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "18f98a1d4bb9b97520dc86abd517810d51596f1c71d135ad4c8b7e157a24ad5c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
