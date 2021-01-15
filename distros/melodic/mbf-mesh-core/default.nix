
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mbf-mesh-core";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mbf_mesh_core/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "b46630c003dfda4f59517bedaec6f669ad00b0bd7b51b5adcb3b269ec9a3f0a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-abstract-core mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_core package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
