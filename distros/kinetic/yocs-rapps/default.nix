
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-velocity-smoother }:
buildRosPackage {
  pname = "ros-kinetic-yocs-rapps";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_rapps/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "18a2b15a820ba5f6d44df3a0e68cfd0a80041b9ad817794e3182cc9d1d48d26e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ yocs-velocity-smoother ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin open control system rapps for use with the app manager and rocon concert'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
