
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, slam-toolbox-msgs }:
buildRosPackage {
  pname = "ros-noetic-slam-toolbox-rviz";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/noetic/slam_toolbox_rviz/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "cc66bf855ac1a772da613702d0db9ec8792ec92e308b22091f91793ea5d27f4b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz slam-toolbox-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
