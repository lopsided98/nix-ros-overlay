
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, mrpt-bridge, mrpt1, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mvsim";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/melodic/mvsim/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "341d75fa8e654806b77f439a1e82959974366382947ef70df434047c7680adca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure message-generation message-runtime mrpt-bridge mrpt1 nav-msgs roscpp sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
