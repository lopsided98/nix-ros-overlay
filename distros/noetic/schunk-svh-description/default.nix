
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "825c5a9f973bd2839f1a66035c5b4d4b71526aaa3c282a5d19e192a19f8c0303";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_svh_description package'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
