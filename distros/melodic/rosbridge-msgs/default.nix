
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-msgs";
  version = "0.11.14-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_msgs/0.11.14-1.tar.gz";
    name = "0.11.14-1.tar.gz";
    sha256 = "507e1ede4d358eff7204455099bc2ddc1cb813bc0f5a0b871c253388a59004e9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
