
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-dev }:
buildRosPackage {
  pname = "ros-kinetic-uuv-world-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_world_plugins/0.6.13-0.tar.gz;
    sha256 = "976e7800ba9e726d851d6d58c294b509ebc4ee970cf698143f4480a3f0f45757";
  };

  buildInputs = [ gazebo-msgs gazebo-dev ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
