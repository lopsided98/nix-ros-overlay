
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-view, joy, joy-teleop }:
buildRosPackage {
  pname = "ros-melodic-heifu-tools";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_tools/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "b301714a25fe05af9e346b8510168cc191f5c17c2ee7683ae9d86715ad02d7d7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-view joy joy-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu Tools'';
    license = with lib.licenses; [ "TODO" ];
  };
}
