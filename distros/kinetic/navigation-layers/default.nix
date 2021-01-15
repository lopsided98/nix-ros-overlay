
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, range-sensor-layer, social-navigation-layers }:
buildRosPackage {
  pname = "ros-kinetic-navigation-layers";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/navigation_layers_release/archive/release/kinetic/navigation_layers/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "a341fdcc91749f5baaf232ad0bb971cf038186b036b113d4615b3a9ff97401be";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ range-sensor-layer social-navigation-layers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extra navigation layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
