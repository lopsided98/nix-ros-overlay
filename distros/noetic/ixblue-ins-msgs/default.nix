
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ixblue-ins-msgs";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/noetic/ixblue_ins_msgs/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "7a178cbeec8c97cd1404323c1d1dad1b65074bd87ab0b521ea7760582d87f191";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ixblue INS defined messages package'';
    license = with lib.licenses; [ mit ];
  };
}
