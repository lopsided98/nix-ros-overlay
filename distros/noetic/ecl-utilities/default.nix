
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-concepts, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-noetic-ecl-utilities";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_utilities/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "aa61adc8fb24b902f8bd38b59fa1982b4335197ebf2a4c776fbe26a13a20f72e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-concepts ecl-license ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes various supporting tools and utilities for c++ programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
