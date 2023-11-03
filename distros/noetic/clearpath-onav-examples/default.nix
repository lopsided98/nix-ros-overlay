
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-onav-api-examples, clearpath-onav-api-examples-lib }:
buildRosPackage {
  pname = "ros-noetic-clearpath-onav-examples";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/clearpath_onav_examples/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "17d2b112e183a927006dbbfe4ca91000aa3b92761002cc20c8c550828d8aa61b";
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
