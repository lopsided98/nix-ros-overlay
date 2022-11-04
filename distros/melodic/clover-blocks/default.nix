
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-clover-blocks";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover_blocks/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "e239ebc11090127ed61030db7fa8c71e9218c00dadfb86328d0204ee0412a651";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Blockly programming support for Clover'';
    license = with lib.licenses; [ mit ];
  };
}
