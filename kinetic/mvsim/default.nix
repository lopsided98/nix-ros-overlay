
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, message-generation, visualization-msgs, message-runtime, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-kinetic-mvsim";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/kinetic/mvsim/0.2.0-0.tar.gz;
    sha256 = "1a515ed7a40b86917533b8ccc7e6b7989dece2503fd6791287ae9f0357a0662e";
  };

  buildInputs = [ sensor-msgs roscpp nav-msgs message-generation message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp nav-msgs message-generation message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    #license = lib.licenses.BSD;
  };
}
