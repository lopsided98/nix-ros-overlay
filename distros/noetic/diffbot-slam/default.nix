
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping }:
buildRosPackage {
  pname = "ros-noetic-diffbot-slam";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_slam/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c7f5bc4db8e9b59bdc242c1be21403d10e7c9245dca66f0db7a4ce01edde9d4b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_slam package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
