
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cmd-vel-smoother";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/cmd_vel_smoother/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "3651226a9405b8293669bdacdb001fc175bb871e759c073b6173696768953c65";
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
