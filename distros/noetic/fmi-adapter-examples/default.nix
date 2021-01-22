
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fmi-adapter, roscpp, rqt-plot }:
buildRosPackage {
  pname = "ros-noetic-fmi-adapter-examples";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/noetic/fmi_adapter_examples/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "0000104bd07c734c1ec6d27a40505810d97cc1c37f74ec1e1ef91acd138252b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fmi-adapter roscpp rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
