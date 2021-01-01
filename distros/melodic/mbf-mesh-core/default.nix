
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mbf-mesh-core";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mbf_mesh_core/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "122f4c0c4195151e16fea4d6e536653bc4be7543943541ee457b262479166edb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-abstract-core mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_core package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
