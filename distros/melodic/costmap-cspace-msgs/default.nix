
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-cspace-msgs";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/costmap_cspace_msgs/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "16d9ea4b6d34cd60944ff38d2e9b22b30701af7624fdaa45883887b4557bc846";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for costmap_cspace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
