
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-docker-control";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_docker_control/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "ae9dfaca0a9448dfff633b408a0d0efc723f69f17714fd7a752b9852363969c8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Autonomous docking";
    license = with lib.licenses; [ asl20 ];
  };
}
