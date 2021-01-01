
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-abstract-nav, mbf-mesh-core, mesh-map, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mbf-mesh-nav";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mbf_mesh_nav/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "04fbe1a816999ca0849abdee66365d71edbbdd540bd4229d4305d7a9e8d60f52";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-abstract-nav mbf-mesh-core mesh-map pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
