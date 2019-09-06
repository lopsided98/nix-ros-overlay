
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-sound, cob-script-server, sensor-msgs, catkin, cob-light, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-teleop";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_teleop/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "50e25b103f789431c3d0a3ec455d79709b1107e1de6067aba6311f17f99e833a";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    license = with lib.licenses; [ asl20 ];
  };
}
