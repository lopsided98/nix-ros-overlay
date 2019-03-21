
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-plot, catkin, fmi-adapter, roscpp }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter-examples";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter_examples/1.0.2-0.tar.gz;
    sha256 = "0cbc8b65bfcc5cd1c06eb8159dd090a7e4dd569e9f4d34a9de8e6258cee1514d";
  };

  propagatedBuildInputs = [ rqt-plot roscpp fmi-adapter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    #license = lib.licenses.Apache License 2.0;
  };
}
