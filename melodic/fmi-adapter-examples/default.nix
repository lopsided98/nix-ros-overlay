
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fmi-adapter, catkin, rqt-plot, roscpp }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter-examples";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter_examples/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "0cbc8b65bfcc5cd1c06eb8159dd090a7e4dd569e9f4d34a9de8e6258cee1514d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fmi-adapter rqt-plot roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
