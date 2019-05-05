
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, message-generation, visualization-msgs, message-runtime, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-melodic-mvsim";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/melodic/mvsim/0.2.1-0.tar.gz;
    sha256 = "341d75fa8e654806b77f439a1e82959974366382947ef70df434047c7680adca";
  };

  buildInputs = [ sensor-msgs roscpp message-generation nav-msgs message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-generation nav-msgs message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
