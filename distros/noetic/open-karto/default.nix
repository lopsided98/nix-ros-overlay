
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-noetic-open-karto";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/open_karto-release/archive/release/noetic/open_karto/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "10049b93fa17eadee4f7ef7ee4a4ecbaf6550e390a76417ebb4bbef161fd44f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
