
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-ftdi, kobuki-dock-drive, kobuki-driver, catkin }:
buildRosPackage {
  pname = "ros-melodic-kobuki-core";
  version = "0.7.8";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_core/0.7.8-0.tar.gz;
    sha256 = "56089bc142fb63afa805b19d543123c28f51feee8e17bdd730908310345ac292";
  };

  propagatedBuildInputs = [ kobuki-ftdi kobuki-dock-drive kobuki-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Non-ROS software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
