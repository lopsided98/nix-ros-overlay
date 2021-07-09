
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-uav-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/uav_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "15428ad920e7797529fb238cfdfef4a8dd7fe7fc0b0bd48edbd9429fe12c7bc5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UAV messages package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
