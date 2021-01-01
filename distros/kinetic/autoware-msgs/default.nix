
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, jsk-recognition-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-autoware-msgs";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/kinetic/autoware_msgs/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "bf94779e2de0353943489d86527656f043d839768fce1c5335a7216e3754c470";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs jsk-recognition-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
