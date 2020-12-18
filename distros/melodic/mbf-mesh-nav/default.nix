
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-abstract-nav, mbf-mesh-core, mesh-map, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mbf-mesh-nav";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mbf_mesh_nav/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "cf2b86243255c59b865e5180af2446afbb654ded7d3525484d080ee983d35567";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mbf-abstract-nav mbf-mesh-core mesh-map pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
