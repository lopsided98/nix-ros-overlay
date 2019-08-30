
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-sound, cob-script-server, sensor-msgs, catkin, cob-light, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-teleop";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_teleop/0.6.14-1.tar.gz;
    sha256 = "0ac4ee1f1fc4e50b30c1480a54741ffdff32d0577a8c63808dd4f553518f7b7a";
  };

  buildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    license = with lib.licenses; [ asl20 ];
  };
}
