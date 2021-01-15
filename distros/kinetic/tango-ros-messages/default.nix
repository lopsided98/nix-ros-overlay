
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tango-ros-messages";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/Intermodalics/tango_ros-release/archive/release/kinetic/tango_ros_messages/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "e322c0fbc460a686ba7d31d087414394ead40ef7eb61e62d1c8a1927f67019af";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages/services used by tango ros lib'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
