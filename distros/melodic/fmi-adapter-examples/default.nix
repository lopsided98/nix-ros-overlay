
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fmi-adapter, roscpp, rqt-plot }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter-examples";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter_examples/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "6a5f6a686247cf80cc4b78249d75afbd8c9be2cf2891e7847824555c3e4d7966";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fmi-adapter roscpp rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
