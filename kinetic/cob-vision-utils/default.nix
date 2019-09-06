
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, tinyxml, roscpp, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-vision-utils";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_vision_utils/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "34dc18f3163f53d698ffda477d6cd3e4967ac86346fe5d3081e51df7b8b87874";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules tinyxml roscpp visualization-msgs opencv3 ];
  propagatedBuildInputs = [ cmake-modules tinyxml roscpp visualization-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
