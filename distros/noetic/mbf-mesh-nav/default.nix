
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-abstract-nav, mbf-mesh-core, mesh-map, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mbf-mesh-nav";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mbf_mesh_nav/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "13abd3b0db94a01e7f4c6e34370779dd0ac47e383a217adef1ab1a09e3886777";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-abstract-nav mbf-mesh-core mesh-map pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
