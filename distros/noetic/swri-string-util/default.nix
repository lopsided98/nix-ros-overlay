
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-string-util";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_string_util/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "b08a5616c2ff1444288ebeb57de6a9e3171b168128d7d6fdba2824b10b47d624";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
