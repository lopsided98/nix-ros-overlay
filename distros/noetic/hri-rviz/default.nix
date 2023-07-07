
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, hri, hri-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-hri-rviz";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_rviz-release/archive/release/noetic/hri_rviz/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "4e97fe4a9e06b2f313a754d63efd645fc42de7990060185fd8401ee4a6e6aae6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge hri hri-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains several rviz plugins to visualize HRI-related topics (like face/body region of interests, 3D skeletons...)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
