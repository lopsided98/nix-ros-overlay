
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-service-tools";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/service_tools/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "d9ea52917bbf70561b1def8719af650f2163cafca42f7047730c6df627a8bd21";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Service tools";
    license = with lib.licenses; [ asl20 ];
  };
}
