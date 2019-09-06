
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rocon-unreliable-experiments";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_unreliable_experiments/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "de5201287fc6fbdb208d06a0de7cef153df87fb69e046c7fd315697fac8db789";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some experiments testing roscpp unreliable transports.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
