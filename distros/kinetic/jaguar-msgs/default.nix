
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_msgs/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "deaafb06cb77f01a7557b79cf20f1056487d7340ccd234399c210fe0f423cda0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for DrRobot's Jaguar 4X4'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
