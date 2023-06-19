
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-khi-duaro-description";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_duaro_description/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "645f2f90187dd82a42d29153231375eb571a80774fd5276d1037a957e3c41884";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI-CAD-license-mesh-data,-see-readme-" ];
  };
}
