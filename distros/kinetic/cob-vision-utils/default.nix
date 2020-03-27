
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, opencv3, roscpp, tinyxml, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-vision-utils";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_vision_utils/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "605682cbb42de0cd740c6f82c3365358b097c5b178fe6149872da60fa4603b4b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules opencv3 roscpp tinyxml visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
