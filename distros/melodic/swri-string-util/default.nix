
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-string-util";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_string_util/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "e4d8f9d943ea10952a3ac378bba021dfd7c3fdbc116286dc7adefcf39687949d";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
