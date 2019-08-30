
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-gazebo, catkin }:
buildRosPackage {
  pname = "ros-melodic-husky-simulator";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_simulator/0.4.0-1.tar.gz;
    sha256 = "940ef26cab90386b8bb3000acf0f9c06f9ac76e53ccb6cec4d9188fd56111d28";
  };

  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
