
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, message-generation, sensor-msgs, dynamic-reconfigure, std-msgs, tf, catkin, mrpt-bridge, roscpp, visualization-msgs, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-mvsim";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/melodic/mvsim/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "341d75fa8e654806b77f439a1e82959974366382947ef70df434047c7680adca";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs message-runtime dynamic-reconfigure std-msgs tf roscpp visualization-msgs mrpt-bridge message-generation nav-msgs ];
  propagatedBuildInputs = [ mrpt1 sensor-msgs dynamic-reconfigure message-runtime std-msgs tf mrpt-bridge roscpp visualization-msgs message-generation nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
