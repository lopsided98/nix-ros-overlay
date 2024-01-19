
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-adi-tmcl";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl-release/archive/release/noetic/adi_tmcl/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "9d621668e2bda3c5365b69d83663de7b5442edd27097a37598eeb36a6c6545c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The adi_tmcl ROS package'';
    license = with lib.licenses; [ mit ];
  };
}
