
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, dynamic-reconfigure, eigen, geometry-msgs, imu-complementary-filter, imu-filter-madgwick, realtime-tools, rm-msgs, roscpp, roslint, tf }:
buildRosPackage {
  pname = "ros-noetic-rm-common";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_common/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "acd6500480193a21f7f726a694c2d8fbb77634c9b219a07e3448984b0512637d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs dynamic-reconfigure eigen geometry-msgs imu-complementary-filter imu-filter-madgwick realtime-tools rm-msgs roscpp roslint tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_common package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
