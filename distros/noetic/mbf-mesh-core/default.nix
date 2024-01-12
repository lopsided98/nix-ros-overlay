
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mbf-mesh-core";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mbf_mesh_core/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "f337999c2ea623831a872308f4932be1eca59747d293a5fd16247240063859be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mbf-abstract-core mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_core package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
