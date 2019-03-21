
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, message-generation, visualization-msgs, message-runtime, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-melodic-mvsim";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/melodic/mvsim/0.2.0-0.tar.gz;
    sha256 = "788c6a3c796e9d0cdf65bbc9793a35edfe6bc685ecfa6521bf0be1dc024e1dce";
  };

  propagatedBuildInputs = [ sensor-msgs roscpp nav-msgs message-generation message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  nativeBuildInputs = [ sensor-msgs catkin roscpp nav-msgs message-generation message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    #license = lib.licenses.BSD;
  };
}
