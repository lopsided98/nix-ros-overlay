
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mesh-map }:
buildRosPackage {
  pname = "ros-noetic-mesh-layers";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/mesh_layers/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "d8e5139bde9271e15296b9cfedd2bd281fd470d8f473bae3899df99c08d02440";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mesh-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_layers package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
