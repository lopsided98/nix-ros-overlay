
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-sound, cob-script-server, sensor-msgs, catkin, cob-light, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-teleop";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_teleop/0.6.12-1.tar.gz;
    sha256 = "049b700832b238563d5da4f22e2399ab1246d052ef9e412e557adbf4dcc51d91";
  };

  buildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    license = with lib.licenses; [ asl20 ];
  };
}
