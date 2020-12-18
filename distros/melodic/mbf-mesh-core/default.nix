
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mesh-map }:
buildRosPackage {
  pname = "ros-melodic-mbf-mesh-core";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/mbf_mesh_core/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "10b1afa79d1627859450fd7312f741ccfdf1c835185e7c079b9469e1d27a1bc1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-abstract-core mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_core package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
