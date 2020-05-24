
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, tf2, tf2-geometry-msgs, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-tf2-urdf";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/standmit/tf2_urdf-release/archive/release/melodic/tf2_urdf/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "3d8d4aaecc1db36b6dd50e8768a4f777fb09234db3bad9a9ecf3dfa79bbc2575";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdfdom-headers ];
  propagatedBuildInputs = [ tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
