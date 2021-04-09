
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-description";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_description/0.5.9-1/bota_driver-release-release-noetic-rokubimini_description-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_description-0.5.9-1.tar.gz";
    sha256 = "73f171ecf7e9031aca25f6b4012e3417193fdca3f4d59e5aa3f1c14b667ee3a0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
