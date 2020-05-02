
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-msgs";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_msgs/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "e8df452b5bb209511872e7d43e2d11f1092b5e15e5edb97e85790aab1a395b04";
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
