
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, tf2, tf2-geometry-msgs, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-tf2-urdf";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/standmit/tf2_urdf-release/archive/release/melodic/tf2_urdf/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f397b372dd5c56a93f4dd6f42187929d66c3cb92103899f95a61734d2d466277";
  };

  buildType = "catkin";
  buildInputs = [ catkin geometry-msgs urdfdom-headers ];
  propagatedBuildInputs = [ tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
