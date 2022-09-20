
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, yocs-velocity-smoother }:
buildRosPackage {
  pname = "ros-melodic-yocs-rapps";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_rapps/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "2767288fa43f309509dcd227d01f558b8c28ab860a65f63e92a2456abff0b1ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ yocs-velocity-smoother ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin open control system rapps for use with the app manager and rocon concert'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
