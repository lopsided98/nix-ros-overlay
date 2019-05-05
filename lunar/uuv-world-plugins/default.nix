
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-dev }:
buildRosPackage {
  pname = "ros-lunar-uuv-world-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_world_plugins/0.6.10-0.tar.gz;
    sha256 = "3646689899448c9ee679604e4cf76049bd374d154a174e9913afc91a687e9a04";
  };

  buildInputs = [ gazebo-msgs gazebo-dev ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
