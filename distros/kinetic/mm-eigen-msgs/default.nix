
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, mm-core-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mm-eigen-msgs";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_eigen_msgs/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "a88faa66329fc0c878e772b7787b10c47cd5f21ca4ca0beab833a37b377201a6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build mm-core-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions and serialisations for Eigen messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
