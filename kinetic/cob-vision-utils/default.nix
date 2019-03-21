
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, tinyxml, roscpp, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-vision-utils";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_vision_utils/0.6.13-0.tar.gz;
    sha256 = "1899fd8d6fb4f913d38ae0c96971d7120d83216c074b28a96f8f2efc9d83ef26";
  };

  propagatedBuildInputs = [ cmake-modules visualization-msgs opencv3 tinyxml roscpp ];
  nativeBuildInputs = [ cmake-modules catkin visualization-msgs opencv3 tinyxml roscpp ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    #license = lib.licenses.Apache 2.0;
  };
}
