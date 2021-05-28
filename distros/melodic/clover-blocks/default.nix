
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-clover-blocks";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover_blocks/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "14a77b30e6f765ca68bc9d3be75f38ff8396695b509d1e9487226973e4deeb23";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Blockly programming support for Clover'';
    license = with lib.licenses; [ mit ];
  };
}
