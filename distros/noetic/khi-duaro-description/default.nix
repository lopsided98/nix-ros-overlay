
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-khi-duaro-description";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_duaro_description/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "ec3d893121f8dea57c5a3bb3050a22ea785bf5a0bd7eb25ff81b7f4ecbb00f42";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI-CAD-license-mesh-data,-see-readme-" ];
  };
}
