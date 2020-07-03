
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-math-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_math_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "81ddbc5ce7286cac7066957f2bd59037132ba3f75b974bad5368da0a60264749";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
