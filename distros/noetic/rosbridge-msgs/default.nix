
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbridge-msgs";
  version = "0.11.16-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosbridge_msgs/0.11.16-1.tar.gz";
    name = "0.11.16-1.tar.gz";
    sha256 = "38127cd7c7c5ca550e9362b4add3cdda2e61eeca5167ce4b54b0c7ff7c4421f7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
