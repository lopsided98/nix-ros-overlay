
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-string-util";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_string_util/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "b1e495337f5bacb001edc4a2ab2d01abf6e74b15d1b249d830670f1d642e46cc";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
