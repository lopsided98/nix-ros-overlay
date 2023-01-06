
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/schunk_svh_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "90d06d2240e267e72a988c2499d0c25a67a1e7c039ecff4a2c5a893fa0f4bd26";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_svh_description package'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
