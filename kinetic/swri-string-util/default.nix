
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin }:
buildRosPackage {
  pname = "ros-kinetic-swri-string-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_string_util/2.8.0-0.tar.gz;
    sha256 = "66c72670cce815b9c3e3418fba413628208f51df3119740797da05781433896f";
  };

  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
