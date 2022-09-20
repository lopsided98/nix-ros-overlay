
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-abstract-nav, mbf-mesh-core, mesh-map, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mbf-mesh-nav";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mbf_mesh_nav/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "46896c2bdca138edc336f49f3f99e518ded479cfae6619802588809fd0d4bdeb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mbf-abstract-nav mbf-mesh-core mesh-map pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_nav package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
