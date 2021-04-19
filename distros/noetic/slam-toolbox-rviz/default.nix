
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz, slam-toolbox-msgs }:
buildRosPackage {
  pname = "ros-noetic-slam-toolbox-rviz";
  version = "1.5.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/noetic/slam_toolbox_rviz/1.5.5-1.tar.gz";
    name = "1.5.5-1.tar.gz";
    sha256 = "547300395d1b6983a62705d3611ec7f7c5f5892e49f026b5ce105f7dd47d3a95";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase rviz slam-toolbox-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
