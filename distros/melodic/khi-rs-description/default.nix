
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-khi-rs-description";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs_description/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4a43ed20e06a9b3a7a8cd7a0a536b08906e8b92bb1eb072cbf6c16515d98b40f";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI-CAD-license-mesh-data,-see-readme-" ];
  };
}
