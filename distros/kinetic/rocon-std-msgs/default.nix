
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rocon-service-pair-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-std-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_std_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "6331f55125bd97a86bae776724a638edbb38db60afaf546a58fa79a45fe717c8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rocon-service-pair-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard messages used by other rocon specific package types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
