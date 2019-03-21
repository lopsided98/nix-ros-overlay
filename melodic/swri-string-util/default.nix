
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-string-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_string_util/2.8.0-0.tar.gz;
    sha256 = "438af33b1eef63657ebe50013af2191fdc29ed560f4392f1c7c9c6c50cc1bb23";
  };

  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    #license = lib.licenses.BSD;
  };
}
