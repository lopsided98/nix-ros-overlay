
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-system-util";
  version = "2.13.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_system_util/2.13.5-1.tar.gz";
    name = "2.13.5-1.tar.gz";
    sha256 = "6162f6ae8d708b123379a8fc7ea9798625f63a73a688fce5602ebe470def74d5";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
