
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fmi-adapter, roscpp, rqt-plot }:
buildRosPackage {
  pname = "ros-noetic-fmi-adapter-examples";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/noetic/fmi_adapter_examples/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "e53713fb0614975272e12580508a1187b529ca80057a5cb166a56d95130c2ebb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fmi-adapter roscpp rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
