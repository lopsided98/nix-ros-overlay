
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, range-sensor-layer, social-navigation-layers }:
buildRosPackage {
  pname = "ros-melodic-navigation-layers";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/navigation_layers/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "e51022d7bd6b2c049f58961b026a30460ce71607b1905c283e7b2626b653f359";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ range-sensor-layer social-navigation-layers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra navigation layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
