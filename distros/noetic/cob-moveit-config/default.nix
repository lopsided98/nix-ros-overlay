
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-config";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_moveit_config/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "72b6535296a5054340be0e4c97c52786e65bd47ed3c90ad8470e84d626683842";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
