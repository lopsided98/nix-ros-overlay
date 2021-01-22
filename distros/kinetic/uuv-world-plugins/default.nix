
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-world-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_world_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "976e7800ba9e726d851d6d58c294b509ebc4ee970cf698143f4480a3f0f45757";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
