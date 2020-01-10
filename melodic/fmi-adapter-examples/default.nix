
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fmi-adapter, roscpp, rqt-plot }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter-examples";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter_examples/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "0cbc8b65bfcc5cd1c06eb8159dd090a7e4dd569e9f4d34a9de8e6258cee1514d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fmi-adapter roscpp rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
