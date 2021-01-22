
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mbf-mesh-core";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mbf_mesh_core/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "c8100c5101802412cc36db9aad410c7d28dd2a8935c39b8e552fa82bd2d6c6c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-abstract-core mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_core package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
