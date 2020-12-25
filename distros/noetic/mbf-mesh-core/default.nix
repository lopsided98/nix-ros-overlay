
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mbf-mesh-core";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mbf_mesh_core/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8561aa278d9666d754fa17b1974e2dd55a8d1ddfa02587d29e1e2e3b011e78a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-abstract-core mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_core package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
