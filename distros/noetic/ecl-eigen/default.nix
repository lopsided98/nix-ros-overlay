
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, ecl-license, eigen }:
buildRosPackage {
  pname = "ros-noetic-ecl-eigen";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_eigen/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "9704ee0c76f3fbce656f22cf38f0af3d28a57405cfedcb805ec12c3e6408abff";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ ecl-license eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
