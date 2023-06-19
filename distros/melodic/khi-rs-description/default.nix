
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-khi-rs-description";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs_description/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f324bbd1e212a26797b1edcae54a58274c27fd01ab03428714345fa13cd67390";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI-CAD-license-mesh-data,-see-readme-" ];
  };
}
