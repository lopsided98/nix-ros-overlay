
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, dynamic-reconfigure, eigen, geometry-msgs, imu-complementary-filter, imu-filter-madgwick, realtime-tools, rm-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-rm-common";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_common/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "34d91773cbadee0c3c49393d702ca8f745e7c2beef776d06403b114c5cce9184";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs dynamic-reconfigure eigen geometry-msgs imu-complementary-filter imu-filter-madgwick realtime-tools rm-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_common package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
