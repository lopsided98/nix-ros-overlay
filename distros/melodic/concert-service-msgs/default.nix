
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rocon-service-pair-msgs, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-melodic-concert-service-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/concert_service_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "6d75585b6bc21b04e3823b99a4e009572e37fd42a154351f34dd5d582d4502e7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rocon-service-pair-msgs rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by official rocon services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
