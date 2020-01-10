
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, opencv3, roscpp, tinyxml, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-vision-utils";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_vision_utils/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "0894dd4b7fc497310d4c8236696415b60d40314380217ee024058833f1944fa4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules opencv3 roscpp tinyxml visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains utilities used within the object detection tool chain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
