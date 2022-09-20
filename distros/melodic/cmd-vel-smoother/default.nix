
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cmd-vel-smoother";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/cmd_vel_smoother/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "a54b3928bb75f3fcabd37ec59172921766d9b1a21f4d4fe55791e8b18fe30c3d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cmd_vel_smoother package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
