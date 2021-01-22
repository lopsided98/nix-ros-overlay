
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sick-visionary-t-driver";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_visionary_t-release/archive/release/kinetic/sick_visionary_t_driver/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "1d8c41a55a787e66638cd0eda28f68ce3725773c25160369426049e8d95d3d18";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-transport roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Open source driver for the SICK Visionary-T 3D TOF camera.'';
    license = with lib.licenses; [ asl20 ];
  };
}
