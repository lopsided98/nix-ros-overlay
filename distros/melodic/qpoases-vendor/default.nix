
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, subversion }:
buildRosPackage {
  pname = "ros-melodic-qpoases-vendor";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/qpoases_vendor-release/archive/release/melodic/qpoases_vendor/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "085113fdfc8befacc6d6f4d4dfe7458f008510f3944fc07e6e7952240d100880";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ subversion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around qpOASES to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
