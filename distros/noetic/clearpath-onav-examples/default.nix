
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-onav-api-examples, clearpath-onav-api-examples-lib }:
buildRosPackage {
  pname = "ros-noetic-clearpath-onav-examples";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/clearpath_onav_examples/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "4f51350485f6c8fdf615aeb3ae08aaf045c2df73088a0a6d30efb38ee46d8131";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clearpath-onav-api-examples clearpath-onav-api-examples-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples to show how to use CPR OutdoorNav API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
