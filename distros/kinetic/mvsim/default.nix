
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, mrpt-bridge, mrpt1, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mvsim";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/kinetic/mvsim/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "ba854c06a37cc8b5c4eb8d83b7695f99e859bc62c337a4f4f3a0a28d7dfe8203";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure message-generation message-runtime mrpt-bridge mrpt1 nav-msgs roscpp sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
