
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-string-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_string_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "4ab1a6c8d451a6fbdd50d4999bd2986b88b4999c7f7c81ff6e46692b3d3a2251";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "swri_string_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
