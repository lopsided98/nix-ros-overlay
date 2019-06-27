
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-plugins";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_plugins/0.6.12-0.tar.gz;
    sha256 = "02877168a30bd5612c172fd6b9e1a003a3ad06e30ef30ca9e45ca3814de541b3";
  };

  buildInputs = [ gazebo-msgs gazebo-dev ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
