
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-tango-ros-messages";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/Intermodalics/tango_ros-release/archive/release/kinetic/tango_ros_messages/2.0.0-0.tar.gz;
    sha256 = "e322c0fbc460a686ba7d31d087414394ead40ef7eb61e62d1c8a1927f67019af";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains messages/services used by tango ros lib'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
