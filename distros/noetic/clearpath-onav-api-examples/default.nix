
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-clearpath-onav-api-examples";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/clearpath_onav_api_examples/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "59af02945534b246abf04afb9f8ee82062e2fbc477bb2178d3109ea856c65795";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples to show how to use CPR OutdoorNav API'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
