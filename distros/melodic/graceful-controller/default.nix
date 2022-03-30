
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-graceful-controller";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/melodic/graceful_controller/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "cdcb7159de9367132010c9fa37e919445d4ff265a05b2a296871c1c5e6e07df0";
  };

  buildType = "catkin";
  buildInputs = [ angles ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
