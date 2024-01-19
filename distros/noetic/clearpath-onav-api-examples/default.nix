
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-clearpath-onav-api-examples";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/clearpath_onav_api_examples/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "3d3e490afc9d4aa1989bc885dff985a8fac738dd7628dd684afff856f3b7ca47";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples to show how to use CPR OutdoorNav API'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
