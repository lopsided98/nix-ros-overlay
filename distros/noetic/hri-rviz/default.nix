
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, hri, hri-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-hri-rviz";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_rviz-release/archive/release/noetic/hri_rviz/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "fa64ddd49032b1a86ffd92b01d130f856b679cea4d54201e9918e1fb4b89ab78";
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
