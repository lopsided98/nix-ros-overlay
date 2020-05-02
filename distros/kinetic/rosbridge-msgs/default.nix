
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-msgs";
  version = "0.11.6-r2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_msgs/0.11.6-2.tar.gz";
    name = "0.11.6-2.tar.gz";
    sha256 = "a81b691987901f9dc552ce91ae04fcf1a953f33323f4a5d28b781f693a7dfcf7";
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
